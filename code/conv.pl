#!/usr/bin/perl -w
use strict;
use warnings;
use feature qw(say);
use IO::File;
use Getopt::Long;

# This Perl script reads in either (i) a .sao file created by ScottKit or (ii) an "original" TRS-80 .DAT game data file. The script then processes the data and outputs a datafile named DAT, which can immediately be added to a BBC Micro disc-image and loaded into the BeebScott interpreter and played. (If you specify the optional -d (debug) flag, this Perl script will also output a BBC BASIC program in plain text, which, when tokenised and run on a BBC Micro (or emulator) with 65(C)02 co-processor active, will write the game data to a BBC Micro filesystem in a file named DAT, which should contain exactly the same data as the aforementioned DAT file written directly by this script.)

my $pname = $0; 
$pname =~ s{^.*[\/]}{};
my $usage="\nUsage: $pname [-n|c|z|d] filename\n n Convert newline to | in messages\n c Concatenate successive messages during gameplay\n z Exclude all-zero actions from game data\n d Output a BBC BASIC data-write program\n";

my $newlines=0;
my $zeros = 0;
my $concatenate = 0;
my $debug = 0;
Getopt::Long::Configure ("bundling");
GetOptions ("n" => \$newlines,
            "z"   => \$zeros,
            "d"   => \$debug,
            "c"  => \$concatenate)
or die ("$usage\n");
            
# filename
my $fname = $ARGV[0];

# bit-flags (W%)
# bit 0: manual newline
# bit 1: "new" string-concatenation behaviour 
my $w = 0;

# manual newline separator
my $n = ' ';

# delete empty actions?
my $z = 0;

# debug?
my $d = 0;

if ($newlines==1) { $n = '|'; }
if ($concatenate==1) { $w |= 2; }
if ($zeros==1) { $z = 1; }
if ($debug==1) { $d = 1; }

# open file for reading
if ((!defined $fname) || ($fname eq '')) { die "$usage\n"; }
my $fh = IO::File->new("< $fname") or die "Couldn't open $fname for reading: $!\n$usage\n";

my $gdata = do { local $/; <$fh> };
close $fh or die "$!\n";

# say $gdata;

# bytes,IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
my $bytes; my $objects; my $actions; my $words; my $rooms; my $mx; my $start;
my $treasures; my $wordlen; my $lt; my $messages; my $treasury;

if ($gdata =~ /^[\s]*([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([\-]?[0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([\-]?[0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)/)
{
	$bytes = $1;
	$objects = $2;
	$actions = $3;
	$words = $4;
	$rooms = $5;
	$mx = $6;
	$start = $7;
	$treasures = $8;
	$wordlen = $9;
	$lt = $10;
	$messages = $11;
	$treasury = $12;
}
else { die "Malformed header!\n"; }

# say "bytes: $bytes";
# say "\$objects: $objects";
# say "\$actions: $actions";
# say "\$words: $words";
# say "\$rooms: $rooms";
# say "\$mx: $mx";
# say "\$start: $start";
# say "\$treasures: $treasures";
# say "\$wordlen: $wordlen";
# say "\$lt: $lt";
# say "\$messages: $messages"; 
# say "\$treasury: $treasury";

$gdata = $';

# say $gdata;

my $nonautoindex = 0;
my $found = 0;
my @actions;
my $n_actions = 0;
do
{
	if ($gdata =~ /^[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)/)
	{
		push @actions, "$1,$2,$3,$4,$5,$6,$7,$8";
		$gdata = $';
	}
	else { die "Malformed action data!\n"; }
		
	if ($found==0 && $actions[$n_actions] =~ /(^[0-9]+),/)
	{
		if ($1 > 100)
		{
			$nonautoindex = $n_actions;
			$found = 1;
		}
	}	
	
	$n_actions++;

} while ($n_actions <= $actions);

# say for @actions;
# say "Nonautoindex: $nonautoindex";
# say "#actions: $n_actions";

my @words;
my $n_words = 0;
do
{
	if ($gdata =~ /^[\s]*("[^"]*")[\s]*("[^"]*")/)
	{
		push @words, "$1,$2";
		$gdata = $';
	}
	else { die "Malformed vocabulary data!\n"; }

	$n_words++;
	
} while ($n_words <= $words);

# say for @words;
# say $n_words;

my @rooms;
my $n_rooms = 0;
do
{
	if ($gdata =~ /^[\s]*([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)[\s]*("[^"]*")/)
	{
		push @rooms, "$1,$2,$3,$4,$5,$6,$7";
		$gdata = $';
	}
	else { die "Malformed room data!\n"; }

	$n_rooms++;
		
} while ($n_rooms <= $rooms);

# say for @rooms;
# say $n_rooms;

my @messages;
my $n_messages = 0;
do
{
	if ($gdata =~ /^[\s]*("[^"]*")/)
	{
		push @messages, $1;
		$gdata = $';
	}
	else { die "Malformed message data!\n"; }

	$n_messages++;
		
} while ($n_messages <= $messages);

# say for @messages;
# say $n_messages;

my @objects;
my $n_objects = 0;
do
{
	if ($gdata =~ /^[\s]*("[^"]*")[\s]*([\-]?[0-9]+)/)
	{
		push @objects, "$1,$2";
		$gdata = $';
	}
	else { die "Malformed object data!\n"; }

	$n_objects++;
		
} while ($n_objects <= $objects);

# say for @objects;
# say $n_objects;

my $n_comments = 0;
do
{
	if ($gdata =~ /^[\s]*("[^"]*")/)
	{
		$gdata = $';
	}
	else { die "Malformed comment!\n"; }
	
	$n_comments++;
	
} while ($n_comments <= $actions);

my $version; my $advnum; my $checksum;
if ($gdata =~ /^[\s]*([0-9]+)[\s]+([0-9]+)[\s]+([0-9]+)/)
{
	my $version = $1;
	my $advnum = $2;
	my $checksum = $3;
}	
else { die "Malformed trailer!\n"; }


# filter out empty actions
if ($z == 1)
{
	my $actions2 = $actions;
	my $nonautoindex2 = $nonautoindex;
	my @actions2;
	
	for (my $i=0; $i<=$actions; $i++)
	{
		if ($actions[$i] =~ /^0+,0+,0+,0+,0+,0+,0+,0+/)
		{
			$actions2--;		
			if ($i < $nonautoindex) { $nonautoindex2--; }
		}
		else { push @actions2, $actions[$i]; }
	}
	$actions = $actions2;
	$nonautoindex = $nonautoindex2;
	@actions = @actions2;
}


if ($d == 1)
{
	say 'NEW';
	say 'AUTO';

	say 'REM Program must be run on a BBC Micro with a 65(C)02 Co-processor';
	say 'LOMEM=&C000';
	say 'HIMEM=&F800';
	say "ONERROR:ONERROROFF:PRINT:REPORT:PRINT'ERL:CLOSE#0:END\n";
}

my @basic;
push @basic, 'REM header';
push @basic, 'REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR';
push @basic, "DATA $objects,$actions,$words,$rooms,$mx,$start,$treasures,$wordlen,$lt,$messages,$treasury\n";

push @basic, 'REM actions';
for(@actions)
{
	push @basic, "DATA $_";
}
push @basic, "DATA $nonautoindex";

push @basic, "\nREM vocab";
for(my $i = 0; $i <= $words; $i++)
{
	my $wordpair = $words[$i];	

	my $dirn = "";
	if ($i==1){ $dirn = substr("NORTH",0,$wordlen); $wordpair =~ s/,"$dirn"/,"NORTH"/; }
	elsif ($i==2){ $dirn = substr("SOUTH",0,$wordlen); $wordpair =~ s/,"$dirn"/,"SOUTH"/; }
	elsif ($i==3){ $dirn = substr("EAST",0,$wordlen); $wordpair =~ s/,"$dirn"/,"EAST"/; }
	elsif ($i==4){ $dirn = substr("WEST",0,$wordlen); $wordpair =~ s/,"$dirn"/,"WEST"/; }
	elsif ($i==6){ $dirn = substr("DOWN",0,$wordlen); $wordpair =~ s/,"$dirn"/,"DOWN"/; }
	elsif ($i==18) # DROP (see BURGLAR.DAT)
	{ 
		$wordpair =~ /^"([^"]*)"/;
		if (length $1 > $wordlen) 
		{ 
			$dirn = substr($1,0,$wordlen); 
			$wordpair =~ s/^"[^"]*",/"$dirn",/; 
		}
	}
	elsif ($i!=0)
	{ 
		if ($wordpair =~ /^"\*?([^"]*)","\*?([^"]*)"/) 
		{ 
			if (length $1 > $wordlen || length $2 > $wordlen) { die "***\n*** Word too long!: $wordpair\n***\n"; } 
		}
		else { die "***\n*** Malformed word data!: $wordpair\n***\n"; } 
	}
	push @basic, "DATA $wordpair";
	$words[$i] = $wordpair;
}

push @basic, "\nREM rooms";
my @rooms2;
for(@rooms)
{
	my $room = $_;
	$room =~ tr/`/'/;
	$room =~ s/\R/ /g;
	push @basic, "DATA $room";
	push @rooms2, $room;
}
@rooms = @rooms2;

push @basic, "\nREM messages";
my @messages2;
for(@messages)
{
	my $message = $_;
	$message =~ tr/`/'/;
	$message =~ s/\R/$n/g;
	push @messages2, $message;
	
	# test for presence of manual newlines
	if (($w & 1)==0 && $message =~ /\|/) { $w |= 1; }
	
	if (length $message>227)
	{
		$message = substr($message,1);

		my @array = ( $message =~ m/.{1,224}/g );
		
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
@messages = @messages2;

say "REM optional bit-flags\nDATA $w\n" if ($d == 1);

if ($d == 1) { say for @basic; }

say"\nREM objects" if ($d == 1);
my @objects2;
for(@objects)
{
	my $object = $_;
	$object =~ tr/`/'/;
	$object =~ s/\R/ /g;
	push @objects2, $object;
	say "DATA $object" if ($d == 1);
}
@objects = @objects2;
say"" if ($d == 1);

	
my $prog = <<'END_MSG';

RESTORE
CLS:INPUT"PREPARE DATA TAPE (HIT ENTER)";TP$:D=-1
CLS:PRINT"ADVENTURE DATA TAPE BUILDER - WORKING"
CLOSE#0:D=OPENOUT("DAT"):VDU14

READ W%:PRINT#D,W%

READ IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
PRINT#D,IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
PRINT'"IL=";IL;",CL=";CL",NL=";NL;",RL=";RL;",MX=";MX;",R=";R","'"TT=";TT;",ln=";ln;",LT=";LT;",ML=";ML;",TR=";TR'
DIMCA%(0,7),NV$(NL,1),IA$(IL),IA(IL),RS$(RL),RM(RL,5),MS$(ML),AA(5),A$(9),A%(1,7):A$=STRING$(255,"*"):A$=""

PRINT"-- CL -- CA%(1,7)"
FORZ=0TOCL:FORY=0TO7:READ CA%(0,Y):NEXTY:X=0:PRINT#D,CA%(X,0),CA%(X,1),CA%(X,2),CA%(X,3),CA%(X,4),CA%(X,5),CA%(X,6),CA%(X,7):PRINT';CA%(X,0);",";CA%(X,1);",";CA%(X,2);",";CA%(X,3);",";CA%(X,4);",";CA%(X,5);",";CA%(X,6);",";CA%(X,7):NEXTZ
READ Z:PRINT#D,Z:PRINT Z

OSCLI"FX21":VDU7,10,13,136:PRINT"PRESS A KEY"':IFGET

PRINT"-- NL -- NV$(NL,1)"
FORX=0TONL:FORY=0TO1:READ NV$(X,Y):PRINT"NV$(";X;",";Y;")="NV$(X,Y):NEXTY,X
OSCLI"FX21":VDU7,10,13,136:PRINT"PRESS A KEY"':IFGET

PRINT"-- RL -- RM(RL,5), RS$(RL)"
FORX=0TORL:READ RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X)
PRINT;RM(X,0);" ";RM(X,1);" ";RM(X,2);" ";RM(X,3);" ";RM(X,4);" ";RM(X,5)'RS$(X):NEXT
OSCLI"FX21":VDU7,10,13,136:PRINT"PRESS A KEY"':IFGET

PRINT"-- ML -- MS$(ML)"
FORX=0TOML:READ A$
IF RIGHT$(A$,1)<>"[" MS$(X)=A$ ELSE MS$(X)=STRING$(255,"*"):MS$(X)=LEFT$(A$,(LENA$)-1):REPEAT READ A$:IF RIGHT$(A$,1)="[" MS$(X)=MS$(X)+LEFT$(A$,(LENA$)-1):UNTIL0 ELSE MS$(X)=MS$(X)+A$:UNTIL1
PRINT"MS$(";X;")="MS$(X):NEXT
OSCLI"FX21":VDU7,10,13,136:PRINT"PRESS A KEY"':IFGET

PRINT"-- IL -- IA$(IL)"
FORX=0TOIL:READ A$,IA(X):IA$(X)=A$:PRINT"IA$(";X;")=";IA$(X)'"IA(";X;")=";IA(X):NEXT
OSCLI"FX21":VDU7,10,13,136:PRINT"PRESS A KEY"':IFGET

PRINT"Writing data to storage medium..."

FORX=0TONL:FORY=0TO1:PRINT#D,NV$(X,Y)
NEXTY,X

FORX=0TORL:PRINT#D,RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X)
NEXT

FORX=0TOML:PRINT#D,MS$(X)
NEXT

FORX=0TOIL:PRINT#D,IA$(X),IA(X)
NEXT

CLOSE#D
PRINT'"Finished writing data."'

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

say $prog if ($d == 1);

open(my $out, '>:raw', 'DAT') or die "Couldn't open file DAT for output: $!\n";

print $out pack('C',0x40);
print $out pack('L>',$w);

for my $head (($objects,$actions,$words,$rooms,$mx,$start,$treasures,$wordlen,$lt,$messages,$treasury))
{
	real_out($head);
}

for my $action (@actions)
{
	if ($action =~ /^([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+)/)
	{
		for my $a ($1,$2,$3,$4,$5,$6,$7,$8)
		{
			print $out pack('C',0x40);
			print $out pack('L>',$a);
		}
	}
	else { die " ***\n*** Badly formed action!: $action\n***\n"; }
}

real_out($nonautoindex);

for(my $i = 0; $i <= $words; $i++)
{
	my $wordpair = $words[$i];	
	if ($wordpair =~ /^"(\*?[^"]*)","(\*?[^"]*)"/) 
	{
		string_out($1);
		string_out($2);
	} 
	else { die " ***\n*** Badly formed word data!: $wordpair\n***\n"; } 	
}

for my $room (@rooms)
{
	if ($room =~ /^([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),"([^"]*)"/)
	{
		for my $a ($1,$2,$3,$4,$5,$6)
		{
			real_out($a);
		}
		string_out($7);
	}
	else { die " ***\n*** Badly formed room data!: $room\n***\n"; } 	
}

for my $message (@messages)
{
	if ($message =~ /^"([^"]*)"/)
	{
		if (length $1 > 255) { die " ***\n*** Message too long!: $message\n***\n"; }
		
		string_out($1);
	}
	else { die " ***\n*** Badly formed message!: $message\n***\n"; } 	
}

for my $object (@objects)
{
	if ($object =~ /^"([^"]*)",([\-]?[0-9]+)/)
	{
		string_out($1);
		real_out($2);
	}
	else { die " ***\n*** Badly formed object!: $object\n***\n"; }
}

close($out) or die "Unable to close: $!\n";


sub real_out 
{
	my $data_real = shift;
	
	if ($data_real == 0)
	{
		print $out pack('C',0xFF);
		print $out pack('x5',0);
		return;
	}
	
	my $minus = 0;
	if ($data_real < 0) { $minus = 1; }
	$data_real = abs($data_real);

	my $data_exponent = 1 + int(log($data_real) / log(2));
	$data_real = $data_real / ( 2 ** ($data_exponent - 32));
	$data_real = $data_real - 0x80000000; # 2147483648;

	my $data_integer = int($data_real);
	my $data_byte = $data_integer & 0xFF;

	print $out pack('C',0xFF);
	print $out pack('C',$data_byte);

	$data_byte = ($data_integer & 0xFF00) / 0x100;
	print $out pack('C',$data_byte);

	$data_byte = ($data_integer & 0xFF0000) / 0x10000;
	print $out pack('C',$data_byte);

	$data_byte = ($data_integer & 0xFF000000) / 0x1000000;
	if ($minus == 1) { $data_byte = $data_byte | 0x80; }
	print $out pack('C',$data_byte);

	$data_byte = $data_exponent + 0x80;
	print $out pack('C',$data_byte);
}

sub string_out
{
	my $s = shift;
	print $out pack('C',0x0);
	print $out pack('C',length $s);
	print $out pack('A'.length $s, scalar reverse $s);
}
