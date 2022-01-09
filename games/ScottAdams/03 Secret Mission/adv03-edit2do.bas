NEW
AUTO
REM Program must be run on a BBC Micro with a 65(C)02 Co-processor
LOMEM=&C000
HIMEM=&F800
ONERROR:ONERROROFF:P.:REPORT:P.'ERL:CLOSE#0:END

REM optional bit-flags
DATA 1

REM header
REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
DATA 53,152,58,23,7,2,0,3,10000,79,1

REM actions
DATA 15,594,180,0,0,0,8850,0
DATA 100,194,206,40,200,0,8851,374
DATA 30,72,854,77,60,0,8850,0
DATA 100,0,0,0,0,0,11550,0
DATA 9,201,0,0,0,0,10566,513
DATA 100,815,16,206,0,0,678,750
DATA 100,249,240,6000,0,0,907,8779
DATA 30,854,207,5515,840,200,9308,0
DATA 30,854,87,5515,840,80,9308,0
DATA 30,854,67,5515,840,60,9308,0
DATA 25,204,0,0,0,0,1360,0
DATA 15,854,0,0,0,0,1650,0
DATA 25,184,0,0,0,0,1362,0
DATA 25,224,0,0,0,0,1362,0
DATA 80,264,268,0,0,0,1950,0
DATA 40,264,269,0,0,0,2100,0
DATA 100,28,181,20,0,0,9000,0
DATA 100,48,41,40,0,0,9000,0
DATA 100,28,193,180,40,20,222,2310
DATA 100,48,193,180,40,40,222,2460
DATA 80,424,481,480,600,0,10817,2700
DATA 80,424,541,0,0,0,2870,9450
DATA 80,424,553,0,0,0,3170,9450
DATA 100,15,180,0,0,0,8850,0
DATA 757,264,852,823,268,0,1372,3450
DATA 911,983,0,0,0,0,10524,0
DATA 1062,323,234,220,0,0,7975,0
DATA 1963,307,0,0,0,0,3927,4200
DATA 2114,186,122,20,20,0,8754,10979
DATA 0,22,20,80,100,0,9354,4500
DATA 0,162,160,80,100,0,9354,4500
DATA 0,142,140,80,100,0,9354,4500
DATA 0,24,100,0,0,0,8131,4800
DATA 3300,323,233,0,0,0,4981,0
DATA 2550,324,0,0,0,0,5103,9450
DATA 3612,323,234,0,0,0,5250,0
DATA 2115,122,46,40,0,0,8729,0
DATA 3916,0,0,0,0,0,5400,0
DATA 2117,89,122,0,0,0,3927,0
DATA 2118,69,122,0,0,0,3927,0
DATA 2117,122,34,20,20,0,9329,0
DATA 2116,0,0,0,0,0,5400,0
DATA 2118,122,174,160,20,0,9329,0
DATA 2115,122,41,180,0,0,4409,0
DATA 2100,122,0,0,0,0,4350,0
DATA 4055,104,80,0,0,0,8170,9600
DATA 1519,63,60,0,0,0,7800,0
DATA 1505,104,80,0,0,0,8170,9600
DATA 4500,553,0,0,0,0,10566,0
DATA 4500,554,0,0,0,0,10566,5550
DATA 3619,63,0,0,0,0,5700,0
DATA 4671,0,0,0,0,0,10650,0
DATA 4800,0,0,0,0,0,513,0
DATA 3622,843,0,0,0,0,5890,0
DATA 2125,302,413,0,0,0,6182,6343
DATA 2125,302,414,0,0,0,10541,6643
DATA 4069,63,0,0,0,0,10545,6900
DATA 3900,122,223,89,80,0,8747,7200
DATA 3900,122,243,69,60,0,8749,7200
DATA 1526,553,0,0,0,0,10566,0
DATA 1526,554,0,0,0,0,10566,5550
DATA 2114,264,180,0,0,0,4404,7500
DATA 2118,284,200,0,0,0,10529,7554
DATA 177,342,268,180,320,0,8904,10564
DATA 177,342,269,320,0,0,8170,9600
DATA 177,324,260,0,0,0,8170,9600
DATA 2117,304,220,0,0,0,10529,7554
DATA 4950,443,403,400,420,440,10859,10564
DATA 3900,423,440,420,400,0,7872,10564
DATA 5279,563,160,0,0,0,7708,0
DATA 5850,168,563,160,180,0,9035,8884
DATA 1529,562,594,560,0,0,7800,0
DATA 6000,0,0,0,0,0,15300,0
DATA 1529,562,874,0,0,0,4003,0
DATA 2729,561,180,560,0,0,5309,5153
DATA 6300,384,483,563,0,0,10604,15813
DATA 6300,404,483,563,0,0,15706,9450
DATA 5280,582,523,860,580,40,10858,10564
DATA 2712,321,234,320,0,0,4835,7950
DATA 6300,483,480,460,0,0,10818,0
DATA 757,184,141,260,0,0,1457,7554
DATA 757,184,161,260,0,0,1457,7554
DATA 757,184,21,260,0,0,1457,7554
DATA 2712,321,233,320,0,0,7950,0
DATA 757,204,21,280,0,0,1457,7554
DATA 757,204,161,280,0,0,1457,7554
DATA 757,224,21,300,0,0,1457,7554
DATA 757,204,0,0,0,0,10509,3300
DATA 757,184,0,0,0,0,10509,3300
DATA 757,224,0,0,0,0,10509,3300
DATA 3300,323,234,0,0,0,5135,0
DATA 5277,282,63,140,200,0,7708,8700
DATA 5869,282,63,148,60,20,11012,10608
DATA 0,140,40,340,280,260,9058,10858
DATA 1531,0,0,0,0,0,4009,0
DATA 3627,264,0,0,0,0,16500,0
DATA 6750,0,0,0,0,0,10611,0
DATA 6900,102,100,0,0,0,10554,9600
DATA 1977,0,0,0,0,0,3927,4200
DATA 5262,323,200,220,0,0,8758,7650
DATA 5882,523,228,220,200,220,7975,9060
DATA 3927,0,0,0,0,0,4678,0
DATA 757,843,264,823,260,0,9009,16800
DATA 181,84,0,0,0,0,16950,0
DATA 3631,84,0,0,0,0,16950,0
DATA 3629,563,0,0,0,0,17100,0
DATA 3633,0,0,0,0,0,9900,0
DATA 2734,554,540,0,0,0,7950,0
DATA 2734,541,540,0,0,0,7950,0
DATA 3627,444,0,0,0,0,10615,0
DATA 1537,463,502,460,480,0,10800,0
DATA 7084,543,540,0,0,0,8850,0
DATA 1519,662,0,0,0,0,4009,0
DATA 1963,662,0,0,0,0,4009,0
DATA 163,662,561,0,0,0,17400,0
DATA 163,662,300,0,0,0,10554,9600
DATA 1963,702,0,0,0,0,4917,17809
DATA 2113,702,0,0,0,0,4917,17809
DATA 2138,702,725,720,0,0,17669,18053
DATA 2138,702,722,0,0,0,4917,17959
DATA 163,702,722,380,0,0,8170,9600
DATA 163,702,725,0,0,0,4021,0
DATA 7213,702,725,720,0,0,18420,7950
DATA 7363,0,0,0,0,0,16350,0
DATA 7505,543,540,0,0,0,8850,0
DATA 757,264,268,0,0,0,1372,0
DATA 3913,0,0,0,0,0,4678,0
DATA 1072,843,794,780,800,820,8003,8023
DATA 0,0,740,980,0,0,8003,3803
DATA 0,74,60,0,0,0,7950,0
DATA 7650,184,0,0,0,0,10509,1500
DATA 7800,0,0,0,0,0,18450,0
DATA 7950,0,0,0,0,0,16350,0
DATA 2100,0,0,0,0,0,4650,0
DATA 7650,204,0,0,0,0,10509,1500
DATA 7650,224,0,0,0,0,10509,1500
DATA 7650,0,0,0,0,0,4650,0
DATA 5850,209,0,0,0,0,4950,0
DATA 5889,208,200,0,0,0,9122,4650
DATA 1050,0,0,0,0,0,4650,0
DATA 7200,0,0,0,0,0,18331,0
DATA 750,0,0,0,0,0,4831,0
DATA 900,0,0,0,0,0,4024,0
DATA 8100,0,0,0,0,0,4025,0
DATA 5250,200,0,0,0,0,7708,0
DATA 5850,208,200,0,0,0,9032,4776
DATA 4050,0,0,0,0,0,19050,0
DATA 8400,600,0,0,0,0,12578,0
DATA 8550,0,0,0,0,0,19050,0
DATA 3611,983,0,0,0,0,19350,0
DATA 3643,264,268,0,0,0,1950,0
DATA 3643,264,269,0,0,0,2100,0
DATA 3600,0,0,0,0,0,5926,0
DATA 24

REM vocab
DATA "AUT","ANY"
DATA "GO","NORTH"
DATA "*ENT","SOUTH"
DATA "*WAL","EAST"
DATA "*RUN","WEST"
DATA "SHO","UP"
DATA "REA","DOWN"
DATA "FRI","PIC"
DATA "*SEA","*PAS"
DATA "*SHA","*BAD"
DATA "GET","*AUT"
DATA "*TAK","LEA"
DATA "*MOV","MOP"
DATA "OPE","DOO"
DATA "PRE","WHI"
DATA "*TOU","RED"
DATA "*PUS","BUT"
DATA "JUM","BLU"
DATA "DRO","YEL"
DATA "*PUT","TAP"
DATA "*LEA","*REC"
DATA "*REM","GAM"
DATA "CLE","SAB"
DATA "*MOP","*HIM"
DATA "LOO","*THE"
DATA "*EXA","GRE"
DATA "UNL","INV"
DATA "ACT","WIN"
DATA "*STA","*GLA"
DATA "*PLA","BOM"
DATA "INV","WIR"
DATA "SAV","CHA"
DATA "QUI","CUT"
DATA "LOA","DET"
DATA "*INS","SUI"
DATA "BRE","*ANT"
DATA "*SMA","*RAD"
DATA "*CUT","WAT"
DATA "*UNB","HAR"
DATA "WIT","HAN"
DATA "CHA","*FIS"
DATA "*FOL","*FOO"
DATA "POU","*FEE"
DATA "*SPI","CAM"
DATA "*EMP","*BOX"
DATA "SCO","MAP"
DATA "SIT","KEY"
DATA "WEA","FIL"
DATA "KIC","*CAR"
DATA "CLO","PAI"
DATA "SUI","*PLA"
DATA "KNO","CAS"
DATA "HEL","ENV"
DATA "PUL","*MAN"
DATA "FIN","YAR"
DATA "*LOC",""
DATA "WAI",""
DATA "UNA",""
DATA "*DIS",""

REM rooms
DATA 0,0,0,0,0,0,""
DATA 0,0,0,0,0,0,""
DATA 0,0,0,3,0,0,"briefing room"
DATA 8,4,2,12,6,7,"long sloping grey corridor"
DATA 3,0,0,0,0,0,"grey room"
DATA 0,0,0,0,0,0,"*I'm sitting in a grey chair there's a box pointing at me"
DATA 9,0,8,0,0,3,"twisting white hallway"
DATA 10,0,0,0,3,0,"twisting yellow hallway"
DATA 11,3,0,6,0,0,"twisting blue hallway"
DATA 0,6,0,0,0,0,"white room"
DATA 0,7,0,0,0,0,"yellow room"
DATA 0,8,0,0,0,0,"blue room"
DATA 0,0,3,0,0,0,"maintenance room 1"
DATA 0,0,0,0,0,0,"large white visitors room"
DATA 0,0,0,17,0,0,"yellow corridor"
DATA 0,0,0,23,22,0,"blue anteroom"
DATA 0,0,0,0,0,0,"*I'm on a ledge outside of a window high above the reactor core"
DATA 0,0,14,0,18,0,"maintenance room 2"
DATA 0,0,0,0,0,17,"projectionist room"
DATA 0,0,20,0,0,21,"Control room surronding the reactor core"
DATA 0,0,0,19,0,0,"break room"
DATA 0,0,0,0,19,0,"reactor core"
DATA 0,0,0,0,0,15,"small viewing room"
DATA 0,0,15,0,0,0,"storage room"

REM messages
DATA ""
DATA "My bomb detector"
DATA "wails ALARMINGLY!"
DATA "*   B O O O O O O O O O M ! * * * * * *"
DATA "Final countdown starts in"
DATA "turns!"
DATA "Welcome to Adventure number 3|'MISSION IMPOSSIBLE' by Scott Adams,| Dedicated to Maegen Adams.|"
DATA "A minute ago someone ran out of this|room! By the way I seem to be carrying|something!|"
DATA "In the distance you hear a dull thud; asif someone fell or dropped something|heavy."
DATA "Metallic voice says:"
DATA "'Show authorization please' "
DATA "Someone came in the room, he saw me and|ran out!"
DATA "'Show authorization please'|"
DATA "TV camera is slow scanning the window|area."
DATA "TV camera is powered down.|"
DATA "politely beeps... "
DATA "angrily buzzes... "
DATA "The radiation did something to my pail!"
DATA "the water soaks into the floor"
DATA "Holding a Radiation Suit"
DATA "doesn't provide much protection for me|as I fall down retching I hear/FEEL THE|BOMB explode!|"
DATA "A business suit"
DATA "'Authorization INSUFFICIENT for access'|"
DATA "'Owner of badge is not present!'"
DATA "Hi! Look for Adventure number 4: 'VOODOOCASTLE' at your favorite computer store!(Now back to our current program.)"
DATA "Something fell to the floor."
DATA "I can't do that"
DATA "It appears locked"
DATA "Most doors & windows are under automatedsecurity control."
DATA "CLICK!"
DATA "There's a Bright flash & I hear|something fall to the floor.|I can't see what it is from here though."
DATA "Nothing happened"
DATA "Strange..."
DATA "HUH?"
DATA "Oh Boy...I think I did something..."
DATA "It made an odd sound."
DATA "say again & use a color!"
DATA "I'm WEARING an anti-radiation suit."
DATA "Try starting it."
DATA "I see nothing special."
DATA "Maybe I should FRISK him?"
DATA "Click!|Room lights dim and a screen drops from|the ceiling.|You hear a hidden projector start."
DATA "The screen illuminates for awhile, but|no movie!?"
DATA "The projector stops, the screen rises,|and the lights return."
DATA "A movie runs telling about the reactor|and its construction|interesting highlights:| 1) Plastic DEFORMS strangely in|radiation| 2) Even short exposure to HIGH|radiation is LETHAL, so suit up|"
DATA "Good morning Mr. Phelps. Your Mission|(should you decide to accept it) is to|prevent this automated nuclear reactor|from being destroyed by a saboteur's|TIME BOMB!|"
DATA "The saboteur (who also rewired the|security system) is a heart patient. He plans to SUICIDE with the reactor! He isstill loose in the building.|You'll find Security keys & a map in themanila envelope lying next to the tape|p["
DATA "layer."
DATA "Blue"
DATA "button is now unlocked"
DATA "Yellow"
DATA "The door opens just long enough for me|to scurry through."
DATA "Tell me with what? Example: 'WITH FIST'"
DATA "I see no one here."
DATA "its still connected"
DATA "the water spills on the bomb and"
DATA "the control panel which immediately shorts|out triggering the bomb"
DATA "defuses it! FANTASTIC, You completed an|IMPOSSIBLE mission!"
DATA "'ACCEPTED'"
DATA "Recorder goes flying thru the glass|landing in the control room. Boy what a|MESS!|"
DATA "It won't budge!"
DATA "I'm on the 2nd floor. Below I see the|control room surronding the reactor|core. There's a wide ledge just under|the window."
DATA "In this Adventure there's NO score.|Either you make it or ...|"
DATA "'TV deactivated' "
DATA "It seems safe. Shall I sit down?"
DATA "Its a seamless box with 1 small hole forthe red wire."
DATA "I'm looking into the control room. I|notice that the door is blocked by some debris."
DATA "Something won't fit thru the door."
DATA "I turn the knob and push"
DATA "gently on the door"
DATA "hard on the door"
DATA "it opens slightly"
DATA "its closed"
DATA "OW! That HURT! Anyway"
DATA "Only help I can think of is to: 'Examineeverything closely!' "
DATA "its unreadable"
DATA "I don't know where to look"
DATA "Be sure I'm carrying it!"
DATA "Tell me how?"
DATA "Some time passes..."
DATA "There is something written there"

REM objects
DATA "Torn up map/MAP/",0
DATA "Picture of me stamped -security-/PIC/",0
DATA "Bomb detector flashing yellow (bomb is now armed)",1
DATA "Large tape recorder/TAP/",2
DATA "Box with apparatus pointing at chair",4
DATA "Chair bolted to floor",4
DATA "Row of 4 buttons -red white blue yellow-",5
DATA "Picture of me stamped: -visitor-/PIC/",1
DATA "Picture of me stamped -maintenance-/PIC/",0
DATA "Surgically implanted bomb detector glows green (bomb's -safe-)",-1
DATA "Bomb detector glowing red (final countdown active)",0
DATA "Blue key/KEY/",0
DATA "Yellow key/KEY/",16
DATA "Closed white door with tv camera mounted over it",9
DATA "Plate glass window with embeded red wires",13
DATA "Panel of buttons -white green-",13
DATA "Old fashioned yarn mop/MOP/",17
DATA "Empty window frame",0
DATA "Tv camera mounted over window",13
DATA "Broken glass/WIN/",16
DATA "Empty movie projector",18
DATA "Movie projector with film cartridge",0
DATA "Movie film cartridge/FIL/",19
DATA "Empty plastic pail/PAI/",12
DATA "Water filled plastic pail/PAI/",0
DATA "Vat of heavy water",23
DATA "Wire cutters/CUT/",17
DATA "Anti-radiation suit/SUI/",23
DATA "Very large time bomb",21
DATA "Red wire going from bomb into wall",21
DATA "Strange lump of glowing plastic/PAI/",0
DATA "Sign 'No beverages, Please use Break Room.'",19
DATA "Yellow door with tv camera over it",10
DATA "Metal door jammed partially open by remains of a tape recorder",19
DATA "Blue door with tv camera over it",11
DATA "Plain metal door with sign -control room-",15
DATA "The door is partially open",0
DATA "Empty pill case/CAS/",0
DATA "6 inch window",22
DATA "Empty manila envelope/ENV/",0
DATA "Piece of yarn/YAR/",0
DATA "Picture of saboteur stamped -window maintance-/PIC/",0
DATA "Dead saboteur/SAB/",0
DATA "Loose red wire going into wall",0
DATA "Steps leading down into the reactor core",19
DATA "Yellow button",14
DATA "Blue button",15
DATA "Keyholes under buttons",5
DATA "Exposed dials and gauges everywhere",19
DATA "A leaflet/LEA/",0
DATA "",0
DATA "",0
DATA "",0
DATA "",0


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


