#!/usr/bin/perl -w
use strict;
use warnings;
use feature qw(say);
use IO::File;

# Reads in a .sao file created by ScottKit and outputs a BBC BASIC program that will write the data in the .sao file to a BBC Micro filesystem in a format suitable for use with BeebScott.

# 2021-02-03 20:24. Add EAST and WEST to vocab correction code.
# 2021-02-04 00:57. Add DOWN to vocab correction code.
# 2021-02-05 -----  Allow for message that starts with line-break.
# 2021-02-12 19:43  Fixed nonautoindex. Fixed dates in these comments!
# 2021-02-19 -----  Detect and record use of manual newlines.
# 2021-02-19 21:45  Moved W% flag to first DATA line in BASIC prog.
# 2021-02-22 12:55  Bittified W%

my $fname = $ARGV[0];

# manual newline separator
my $n = ' ';

if (defined $fname && $fname eq '-n') 
{ 
	$n = '|';
	$fname = $ARGV[1];
}

my $pname = $0; 
$pname =~ s{^.*/}{};

if ((!defined $fname) || ($fname eq ''))
{
	die "Usage: $pname [-n] filename\n";
}

my $fh = IO::File->new("< $fname") or die "Couldn't open $fname for reading: $!\nUsage: $pname [-n] filename\n";

# bytes, IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR

chomp (my $bytes = <$fh>);
chomp (my $objects = <$fh>);
chomp (my $actions = <$fh>);
chomp (my $words = <$fh>);
chomp (my $rooms = <$fh>);
chomp (my $mx = <$fh>);
chomp (my $start = <$fh>);
chomp (my $treasures = <$fh>);
chomp (my $wordlen = <$fh>);
chomp (my $lt = <$fh>);
chomp (my $messages = <$fh>);
chomp (my $treasury = <$fh>);

say "NEW";
say "AUTO";

say "REM Program must be run on a BBC Micro with a 65(C)02 Co-processor";
say "LOMEM=&C000";
say "HIMEM=&F800";

say "ONERROR:ONERROROFF:P.:REPORT:P.'ERL:CLOSE#0:END\n";

my @basic;

push @basic, 'REM header';
push @basic, 'REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR';

push @basic, "DATA $objects,$actions,$words,$rooms,$mx,$start,$treasures,$wordlen,$lt,$messages,$treasury\n";

my $blank = <$fh>;

########################################

push @basic, 'REM actions';

my $nonautoindex = 0;
my $found = 0;

for(my $i = 0; $i <= $actions; $i++)
{
	chomp(my $action=<$fh>);
	$action =~ tr/ /,/;
	push @basic, "DATA $action";
	
	if ($found==0 && $action =~ /([0-9]+),/)
	{
		if ($1 > 100)
		{
			$nonautoindex = $i;
			$found = 1;
		}
	}
}

push @basic, "DATA $nonautoindex";

$blank = <$fh>; 

########################################

push @basic, "\nREM vocab";
for(my $i = 0; $i <= $words; $i++)
{
	chomp(my $wordpair=<$fh>);
	$wordpair =~ s/" "/","/g;
	
	my $dirn = "";
	if ($i==1){ $dirn = substr("NORTH",0,$wordlen); $wordpair =~ s/,"$dirn"/,"NORTH"/; }
	if ($i==2){ $dirn = substr("SOUTH",0,$wordlen); $wordpair =~ s/,"$dirn"/,"SOUTH"/; }
	if ($i==3){ $dirn = substr("EAST",0,$wordlen); $wordpair =~ s/,"$dirn"/,"EAST"/; }
	if ($i==4){ $dirn = substr("WEST",0,$wordlen); $wordpair =~ s/,"$dirn"/,"WEST"/; }
	if ($i==6){ $dirn = substr("DOWN",0,$wordlen); $wordpair =~ s/,"$dirn"/,"DOWN"/; }
	
	push @basic, "DATA $wordpair";
}

$blank = <$fh>;

########################################

push @basic, "\nREM rooms";
for(my $i = 0; $i <= $rooms; $i++)
{
	chomp(my $room=<$fh>);
	$room =~ s/([0-9]+) /$1,/g;
	
	if (substr($room,-1) ne '"')
	{
		do 
		{
			$room .= ' '.<$fh>;
			chomp $room;
		}
		while (substr($room,-1) ne '"')
	}

	$room =~ tr/`/'/;	
	
	push @basic, "DATA $room";
}

$blank = <$fh>;

########################################

# manual newline flag
my $w = 0;

push @basic, "\nREM messages";
for(my $i = 0; $i <= $messages; $i++)
{
	chomp(my $message=<$fh>);
	
	if (substr($message,-1) ne '"' || $message eq '"')
	{
		do 
		{
			$message .= $n.<$fh>;
			chomp $message;
		}
		while (substr($message,-1) ne '"')
	}
	
	$message =~ tr/`/'/;

	if (length $message>255)
	{
		die "Message too long!:\n$message\n";
	}
	
	# test for presence of manual newlines
	if ($w==0 && $message =~ /\|/) { $w |= 1; }
	
	if (length $message>230)
	{
		$message = substr($message,1);

		my @array = ( $message =~ m/.{1,230}/g );
		foreach(@array[0..$#array-1])
		{
			push @basic, "DATA ".'"'."$_".'["';
		}
		push @basic, "DATA ".'"'."$array[$#array]";
	}
	else 
	{
		push @basic, "DATA $message";
	}
}

say "REM manual newline flag\nDATA $w\n";

say for @basic;

$blank = <$fh>;

########################################

say"\nREM objects";
for(my $i = 0; $i <= $objects; $i++)
{
	chomp(my $object=<$fh>);
	$object =~ s/ ([\-]?[0-9]+)$/,$1/;
	
	$object =~ tr/`/'/;
	
	say "DATA $object";
}

$blank = <$fh>;

########################################

for(my $i = 0; $i <= $actions; $i++)
{
	<$fh>;
}

$blank = <$fh>; say"";

########################################

chomp(my $version=<$fh>);
chomp(my $advnum=<$fh>);
chomp(my $checksum=<$fh>);

########################################

close $fh or die "$!\n";

my $prog = <<'END_MSG';

RESTORE
CLS:INPUT"PREPARE DATA TAPE (HIT ENTER)";TP$:D=-1
CLS:PRINT"ADVENTURE DATA TAPE BUILDER - WORKING"
CLOSE#0:D=OPENOUT("DAT"):V.14

READ W%:PRINT#D,W%

READ IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
PRINT#D,IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
PRINT'"IL=";IL;",CL=";CL",NL=";NL;",RL=";RL;",MX=";MX;",R=";R","'"TT=";TT;",ln=";ln;",LT=";LT;",ML=";ML;",TR=";TR'
DIMCA%(0,7),NV$(NL,1),IA$(IL),IA(IL),RS$(RL),RM(RL,5),MS$(ML),AA(5),A$(9),A%(1,7):A$=STRING$(255,"*"):A$=""

P."-- CL -- CA%(1,7)"
FORZ=0TOCL:FORY=0TO7:READ CA%(0,Y):NEXTY:X=0:PRINT#D,CA%(X,0),CA%(X,1),CA%(X,2),CA%(X,3),CA%(X,4),CA%(X,5),CA%(X,6),CA%(X,7):PRINT';CA%(X,0);",";CA%(X,1);",";CA%(X,2);",";CA%(X,3);",";CA%(X,4);",";CA%(X,5);",";CA%(X,6);",";CA%(X,7):NEXTZ
READ Z:PRINT#D,Z:P.Z

OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- NL -- NV$(NL,1)"
FORX=0TONL:FORY=0TO1:READ NV$(X,Y):P."NV$(";X;",";Y;")="NV$(X,Y):NEXTY,X
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- RL -- RM(RL,5), RS$(RL)"
FORX=0TORL:READ RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X)
P.;RM(X,0);" ";RM(X,1);" ";RM(X,2);" ";RM(X,3);" ";RM(X,4);" ";RM(X,5)'RS$(X):NEXT
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- ML -- MS$(ML)"
FORX=0TOML:READ A$
IF RIGHT$(A$,1)<>"[" MS$(X)=A$ ELSE MS$(X)=STRING$(255,"*"):MS$(X)=LEFT$(A$,(LENA$)-1):REP.READ A$:IF RIGHT$(A$,1)="[" MS$(X)=MS$(X)+LEFT$(A$,(LENA$)-1):U.0 EL.MS$(X)=MS$(X)+A$:U.1
P."MS$(";X;")="MS$(X):NEXT
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- IL -- IA$(IL)"
FORX=0TOIL:READ A$,IA(X):IA$(X)=A$:P."IA$(";X;")=";IA$(X)'"IA(";X;")=";IA(X):NEXT
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."Writing data to storage medium..."

FORX=0TONL:FORY=0TO1:PRINT#D,NV$(X,Y)
NEXTY,X

FORX=0TORL:PRINT#D,RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X)
NEXT

FORX=0TOML:PRINT#D,MS$(X)
NEXT

FORX=0TOIL:PRINT#D,IA$(X),IA(X)
NEXT

CLOSE#D
P.'"Finished writing data."'

INPUT"REWIND TAPE TO BE VERFIED";TP$

D=OPENIN("DAT")
RESTORE

READ W%:INPUT#D,Z:IF W%<>Z STOP

FORX=1TO11:READA0%:NEXT
INPUT#D,A0%,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0
IFB0<>TR OR A0%<>IL OR A1<>CL OR A2<>NL OR A3<>RL OR A4<>MX OR A5<>R OR(A6<>TT) OR A7<>ln OR(A8<>LT) OR A9<>ML THEN STOP

FORX=0TOCL:INPUT#D,A%(0,0),A%(0,1),A%(0,2),A%(0,3),A%(0,4),A%(0,5),A%(0,6),A%(0,7)
FORZ=0TO7:READ A0%:IFA%(0,Z)<>A0% THEN STOP ELSE NEXT Z,X
READ A0%:INPUT#D,Z:IF A0%<>Z STOP

FORX=0TONL:FORY=0TO1:INPUT#D,A$(0):IFNV$(X,Y)<>A$(0) THEN STOP ELSE NEXTY,X

FORX=0TORL:INPUT#D,AA(0),AA(1),AA(2),AA(3),AA(4),AA(5),A$
FORY=0TO5:IFAA(Y)<>RM(X,Y)ORA$<>RS$(X)THEN STOP ELSE NEXT Y,X

FORX=0TOML:INPUT#D,A$
IFA$<>MS$(X)THEN STOP ELSE NEXT

FORX=0TOIL:INPUT#D,A$,AA(0)
IFAA(0)<>IA(X)ORA$<>IA$(X)THEN STOP ELSE NEXT

CLOSE#D:PRINT"DATA TAPE VERIFIED"

END

END_MSG

say $prog;
