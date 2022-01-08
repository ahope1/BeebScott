NEW
AUTO
REM Program must be run on a BBC Micro with a 65(C)02 Co-processor
LOMEM=&C000
HIMEM=&F800
ONERROR:ONERROROFF:PRINT:REPORT:PRINT'ERL:CLOSE#0:END

REM optional bit-flags
DATA 0

REM header
REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
DATA 19,38,23,13,4,1,1,3,10,28,12

REM actions
DATA 100,29,20,0,0,0,208,0
DATA 100,48,40,80,0,0,9080,8173
DATA 0,0,0,0,0,0,9688,12073
DATA 0,0,0,0,0,0,9602,0
DATA 100,101,126,69,60,0,8703,0
DATA 100,61,86,89,80,0,8704,0
DATA 100,121,101,109,100,0,8705,0
DATA 100,81,66,129,120,0,8706,0
DATA 25,204,0,0,0,0,1050,0
DATA 25,342,286,0,0,0,1263,0
DATA 100,328,320,180,240,0,9072,9600
DATA 100,184,308,0,0,0,8614,0
DATA 100,204,309,0,0,0,8464,0
DATA 100,342,281,0,0,0,1350,0
DATA 100,342,286,0,0,0,1500,0
DATA 300,0,0,0,0,0,9750,0
DATA 450,0,0,0,0,0,9600,0
DATA 750,0,0,0,0,0,9900,0
DATA 1050,0,0,0,0,0,9450,0
DATA 1800,0,0,0,0,0,1650,0
DATA 1207,3,22,20,40,0,10876,1800
DATA 1207,12,0,0,0,0,1964,0
DATA 1350,40,40,0,0,0,2337,8173
DATA 0,40,100,0,0,0,2487,13123
DATA 0,60,100,0,0,0,8117,13123
DATA 0,0,0,0,0,0,2764,0
DATA 2400,40,0,0,0,0,2908,3088
DATA 1509,86,0,0,0,0,3150,0
DATA 1510,121,60,100,0,0,8752,0
DATA 2550,141,160,0,0,0,11122,0
DATA 2550,161,140,0,0,0,11123,0
DATA 3000,160,140,0,0,0,11274,0
DATA 3161,203,200,180,0,0,10825,9600
DATA 3311,262,243,240,0,0,8319,3900
DATA 3463,302,372,0,0,0,4050,0
DATA 3463,302,300,320,0,0,10812,9600
DATA 163,322,260,0,0,0,8164,0
DATA 1514,342,286,0,0,0,4200,0
DATA 1514,360,0,0,0,0,7812,0
DATA 15

REM vocab
DATA "AUT","ANY"
DATA "GO","NORTH"
DATA "SCO","SOUTH"
DATA "LOO","EAST"
DATA "*L","WEST"
DATA "INV","UP"
DATA "*I","DOWN"
DATA "QUI","FIL"
DATA "WIT","*NAI"
DATA "AR1","FOX"
DATA "GET","BAT"
DATA "*TAK","LAM"
DATA "CUT","*LAN"
DATA "*BRE","DOO"
DATA "*FIL","KEY"
DATA "*TRI","BOX"
DATA "AR2","HAT"
DATA "BOO","BEL"
DATA "DRO","STO"
DATA "*LEA","CRO"
DATA "FET","COI"
DATA "LIG","BOL"
DATA "REF",""
DATA "OPE",""

REM rooms
DATA 0,0,0,0,0,0,""
DATA 0,0,5,0,0,0,"workroom. * Here you can type AR1 or AR2 or BREAK BOLT or WITH FILE. Scott Adams's TRS-80 interpreter ADVENTUR/CMD would allow BREAK BOLT but not (e.g.) BREAK BLAH. * To proceed to the next test, go EAST"
DATA 0,0,0,0,0,0,"r10"
DATA 0,0,0,0,0,0,"r23"
DATA 0,0,0,0,0,0,"** This is the temporary room. *"
DATA 0,0,6,0,0,0,"cavern. * Here you can try GET FOX, GET BAT, etc. * To proceed to the next test, go EAST"
DATA 7,0,8,0,0,0,"grotto. * Here you can GO NORTH, GET BELL, GET STONE, BOOM and FETCH. * To proceed to the next test, go EAST"
DATA 0,6,0,0,0,0,"hollow. * Here you can GO SOUTH, GET BELL, GET STONE, BOOM and FETCH."
DATA 0,0,9,0,0,0,"cave mouth. * This is a tutorial adventure. You must find a gold coin and store it"
DATA 12,0,10,8,0,0,"square chamber"
DATA 11,0,0,9,0,0,"gloomy dungeon"
DATA 0,10,0,0,0,0,"damp, dismal crypt"
DATA 0,9,0,0,0,0,"gorgeously decorated throne room"
DATA 10,0,0,0,0,0,"dungeon cell"

REM messages
DATA ""
DATA "WELCOME to the Scott Adams game interpreter test-suite!"
DATA "The room description should have changed briefly to that of the 'temporary room'."
DATA "Oh dear! You shouldn't be able to pick up the bat without first getting the hat!"
DATA "Oh dear! You shouldn't be able to pick up the fox without first getting the box!"
DATA "If you took the hat before taking the bat, then all is well. (You shouldn't be able to do it the other way round.)"
DATA "Now you still shouldn't be able to GET FOX _ because an explicit GET FOX action hasn't been coded!"
DATA "I smell something rotting to the north."
DATA "Vampire bites me! I'm dead!"
DATA "Vampire cowers away from the cross!"
DATA "Vampire looks hungrily at me."
DATA "Tell me with what? Like: WITH FIST"
DATA "OK"
DATA "Sorry I can't do that"
DATA "I've a hunch I've been robbed!"
DATA "This is Alternate Room Registers test 1"
DATA "Swapped to room r10"
DATA "Swapped to room r23"
DATA "Swapped back to original room"
DATA "This is Alternate Room Registers test 2"
DATA "You are being transported..."
DATA "You can't get the fox unless you're carrying the box!"
DATA "Boom! Performed a 'superget' on the stone."
DATA "Boom! Performed a 'superget' on the bell."
DATA "Brought stone to bell."
DATA "OK, lamp is now lit and will burn for 10 turns."
DATA "The lamp is now full and lit."
DATA "It's locked."
DATA "I'm not going anywhere near that vampire!"

REM objects
DATA "Large tempered nail file/FIL/",1
DATA "Lockable slide bolt",1
DATA "Broken slide lock",0
DATA "A fox/FOX/",5
DATA "A box/BOX/",5
DATA "A bat/BAT/",5
DATA "A hat/HAT/",5
DATA "A bell/BEL/",6
DATA "A stone/STO/",7
DATA "A lit lamp/LAM/",0
DATA "An old-fashioned brass lamp/LAM/",12
DATA "Sign says: leave treasure here, then say SCORE",12
DATA "An empty lamp/LAM/",0
DATA "A lamp-refilling station",8
DATA "A wooden cross/CRO/",9
DATA "A locked door",10
DATA "An open door leads south",0
DATA "A vampire",11
DATA "A brass key/KEY/",11
DATA "*Gold coin*/COI/",13


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


