#!/usr/bin/perl -w
use strict;
use warnings;
use feature qw(say);
use IO::File;

my $fname = $ARGV[0];

my $fh = IO::File->new("< $fname") or die "Couldn't open $fname for reading: $!\n";

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

say "ONERROR:ONERROROFF:P.:REPORT:P.'ERL:CLOSE#0:END\n";

say "REM header";
say "REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR";

say "DATA $objects,$actions,$words,$rooms,$mx,$start,$treasures,$wordlen,$lt,$messages,$treasury\n";

my $blank = <$fh>;

say "REM actions";
for(my $i = 0; $i <= $actions; $i++)
{
	chomp(my $action=<$fh>);
	$action =~ tr/ /,/;
	say "DATA $action";
}

$blank = <$fh>; 

say"\nREM vocab";
for(my $i = 0; $i <= $words; $i++)
{
	chomp(my $wordpair=<$fh>);
	$wordpair =~ s/" "/","/g;
	say "DATA $wordpair";
}

$blank = <$fh>;

say"\nREM rooms";
for(my $i = 0; $i <= $rooms; $i++)
{
	chomp(my $room=<$fh>);
	$room =~ s/([0-9]) /\1,/g;
	say "DATA $room";
}

$blank = <$fh>;

say"\nREM messages";
for(my $i = 0; $i <= $messages; $i++)
{
	chomp(my $message=<$fh>);
	say "DATA $message";
}

$blank = <$fh>;

say"\nREM objects";
for(my $i = 0; $i <= $objects; $i++)
{
	chomp(my $object=<$fh>);
	$object =~ s/ ([0-9])$/,\1/;
	say "DATA $object";
}

for(my $i = 0; $i <= $actions; $i++)
{
	<$fh>;
}

$blank = <$fh>; say"";

chomp(my $version=<$fh>);
chomp(my $advnum=<$fh>);
chomp(my $checksum=<$fh>);

close $fh or die "$!\n";

my $prog = <<'END_MSG';

RESTORE
CLS:INPUT"PREPARE DATA TAPE (HIT ENTER)";TP$:D=-1
CLS:PRINT"ADVENTURE DATA TAPE BUILDER - WORKING"
CLOSE#0:D=OPENOUT("DAT"):V.14

READ IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
PRINT#D,IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
PRINT'"IL=";IL;",CL=";CL",NL=";NL;",RL=";RL;",MX=";MX;",R=";R","'"TT=";TT;",ln=";ln;",LT=";LT;",ML=";ML;",TR=";TR'
DIMCA(0,7),NV$(NL,1),IA$(IL),IA(IL),RS$(RL),RM(RL,5),MS$(ML),AA(5),A$(9),A(1,7)

P."-- CL -- CA(1,7)"
FORZ=0TOCL:FORY=0TO7:READ CA(0,Y):NEXTY:X=0:PRINT#D,CA(X,0),CA(X,1),CA(X,2),CA(X,3),CA(X,4),CA(X,5),CA(X,6),CA(X,7):PRINT';CA(X,0);",";CA(X,1);",";CA(X,2);",";CA(X,3);",";CA(X,4);",";CA(X,5);",";CA(X,6);",";CA(X,7):NEXTZ
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- NL -- NV$(NL,1)"
FORX=0TONL:FORY=0TO1:READ NV$(X,Y):P."NV$(";X;",";Y;")="NV$(X,Y):NEXTY,X
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- RL -- RM(RL,5), RS$(RL)"
FORX=0TORL:READ RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X)
P.;RM(X,0);" ";RM(X,1);" ";RM(X,2);" ";RM(X,3);" ";RM(X,4);" ";RM(X,5)'RS$(X):NEXT
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- ML -- MS$(ML)"
FORX=0TOML:READ MS$(X):P."MS$(";X;")="MS$(X):NEXT
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."-- IL -- IA$(IL)"
FORX=0TOIL:READ IA$(X),IA(X):P."IA$(";X;")=";IA$(X)'"IA(";X;")=";IA(X):NEXT
OS."FX21":V.7,10,13,136:P."PRESS A KEY"':IFGET

P."Writing data to storage medium..."

FORX=0TONL:FORY=0TO1:PRINT#D,NV$(X,Y)
REMP."NV$(";X;",";Y;")="NV$(X,Y):
NEXTY,X

FORX=0TORL:PRINT#D,RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X)
REMPRINT"Room ";X'RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5)'">"RS$(X)"<":
NEXT

FORX=0TOML:PRINT#D,MS$(X)
REMPRINT"Message ";X;" >"MS$(X)"<":
NEXT

FORX=0TOIL:PRINT#D,IA$(X),IA(X)
REMPRINT"Object ";X'">"IA$(X)"<"'IA(X)':
NEXT

CLOSE#D
P.'"Finished writing data."'

INPUT"REWIND TAPE TO BE VERFIED";TP$

D=OPENIN("DAT")
RESTORE

FORX=1TO11:READA0:NEXT
INPUT#D,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0
IFB0<>TR OR A0<>IL OR A1<>CL OR A2<>NL OR A3<>RL OR A4<>MX OR A5<>R OR(A6<>TT) OR A7<>ln OR(A8<>LT) OR A9<>ML THEN PROC6790

FORX=0TOCL:INPUT#D,A(0,0),A(0,1),A(0,2),A(0,3),A(0,4),A(0,5),A(0,6),A(0,7)
FORZ=0TO7:READ A0:IFA(0,Z)<>A0,THEN PROC6790,ELSE NEXT Z,X

FORX=0TONL:FORY=0TO1:INPUT#D,A$(0):IFNV$(X,Y)<>A$(0) THEN PROC6790,ELSE NEXTY,X

FORX=0TORL:INPUT#D,AA(0),AA(1),AA(2),AA(3),AA(4),AA(5),A$
REMP."Room ";X'AA(0),AA(1),AA(2),AA(3),AA(4),AA(5)'">"A$"<":
FORY=0TO5:IFAA(Y)<>RM(X,Y)ORA$<>RS$(X)THEN PROC6790,ELSE NEXT Y,X

FORX=0TOML:INPUT#D,A$
REMP."Message ";X'">"A$"<":
IFA$<>MS$(X)THEN PROC6790,ELSE NEXT

FORX=0TOIL:INPUT#D,A$,AA(0)
REMP."Object ";X'">"A$"<"'AA(0):
IFAA(0)<>IA(X)ORA$<>IA$(X)THEN PROC6790,ELSE NEXT

CLOSE#D:PRINT"DATA TAPE VERIFIED"

END

DEFPROC6790
PRINT"BAD TAPE":CLOSE#D:END
ENDPROC

END_MSG

say $prog;
