NEW
AUTO
REM Program must be run on a BBC Micro with a 65(C)02 Co-processor
LOMEM=&C000
HIMEM=&F800
ONERROR:ONERROROFF:P.:REPORT:P.'ERL:CLOSE#0:END

REM optional bit-flags
DATA 0

REM header
REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
DATA 72,219,71,22,7,1,0,3,175,88,1

REM actions
DATA 100,0,0,0,0,0,11623,0
DATA 0,29,60,0,1300,0,229,12229
DATA 0,29,60,0,60,0,381,11931
DATA 0,215,36,49,367,127,450,0
DATA 0,95,89,36,49,0,600,0
DATA 0,39,0,0,0,0,8405,9600
DATA 100,702,64,700,200,0,10800,0
DATA 100,88,20,0,0,0,12227,10950
DATA 0,175,95,0,0,0,600,0
DATA 0,15,80,0,0,0,9000,0
DATA 0,20,0,0,0,0,12150,0
DATA 33,84,153,440,0,0,907,1254
DATA 100,701,224,720,700,0,8922,1350
DATA 100,15,89,447,40,0,8770,0
DATA 25,15,621,49,447,0,1511,0
DATA 40,15,626,49,447,40,1512,8788
DATA 50,84,183,440,0,0,1958,8100
DATA 100,48,447,140,60,40,11004,8760
DATA 0,294,0,260,420,240,8162,8850
DATA 0,333,325,320,180,0,8908,0
DATA 0,120,140,200,700,0,8909,8909
DATA 0,20,40,40,1300,1100,8912,11909
DATA 0,913,905,900,180,0,8908,0
DATA 0,533,525,520,260,180,9358,0
DATA 0,4,20,0,0,0,8114,0
DATA 0,188,180,20,0,0,9054,2250
DATA 0,20,0,0,0,0,8157,353
DATA 0,363,60,360,380,0,9072,2400
DATA 0,80,720,0,0,0,9059,8014
DATA 100,68,60,0,0,0,9081,11623
DATA 0,15,440,0,0,0,2568,8100
DATA 0,0,440,0,0,0,2631,11100
DATA 50,553,267,40,0,0,12227,10950
DATA 0,19,540,560,580,600,8909,8909
DATA 0,124,19,0,0,0,2850,0
DATA 0,40,0,0,0,0,12150,0
DATA 100,444,0,0,0,0,3063,0
DATA 30,515,914,187,934,0,11031,0
DATA 0,59,900,180,1300,180,9362,3150
DATA 0,0,0,0,0,0,12150,0
DATA 100,29,20,0,0,0,8700,0
DATA 100,35,192,0,0,0,8464,0
DATA 100,204,16,308,0,0,8626,0
DATA 29,795,954,187,940,180,9321,0
DATA 907,3,0,0,0,0,3300,0
DATA 159,84,100,0,0,0,8176,3450
DATA 159,104,200,0,0,0,8176,3450
DATA 1062,343,453,0,0,0,10967,3625
DATA 0,0,0,0,0,0,12228,12176
DATA 2413,183,180,400,0,0,10823,9600
DATA 3313,403,423,180,400,0,10876,3450
DATA 3764,363,360,380,0,0,10823,0
DATA 1062,343,454,0,0,0,4050,0
DATA 1059,44,0,0,0,0,4200,0
DATA 4059,22,20,40,0,0,10876,3450
DATA 159,22,701,60,120,0,8153,11423
DATA 1366,3,682,0,700,720,8903,8026
DATA 1367,3,83,0,140,200,8903,8026
DATA 4350,202,80,0,0,0,8176,3450
DATA 4350,222,80,0,0,0,8176,3450
DATA 4500,40,80,0,0,0,8770,9000
DATA 1069,743,0,0,0,0,4428,4500
DATA 159,64,701,40,120,0,8159,11423
DATA 1070,16,883,0,0,0,4650,0
DATA 1070,883,15,0,0,0,4833,0
DATA 1371,1082,0,700,360,1100,8912,8026
DATA 4650,1102,700,1100,0,0,8909,8026
DATA 4650,142,140,200,0,0,8909,8026
DATA 1072,1262,0,0,0,0,3482,4950
DATA 4823,463,80,460,480,20,8772,12223
DATA 0,800,20,0,0,0,11931,3484
DATA 4823,483,80,480,160,20,8772,12223
DATA 0,800,20,0,0,0,11931,3484
DATA 1074,84,0,0,0,0,4833,0
DATA 5100,543,124,574,560,600,5303,7950
DATA 1075,1242,0,0,0,0,4833,0
DATA 1076,404,0,0,0,0,4833,0
DATA 3327,663,423,40,160,40,12229,12223
DATA 0,660,540,0,0,0,10823,0
DATA 1527,663,660,0,0,0,7823,0
DATA 1078,943,0,0,0,0,5400,0
DATA 1080,1303,0,0,0,0,5400,0
DATA 1527,543,540,0,0,0,7823,0
DATA 1081,1003,0,0,0,0,5550,0
DATA 1083,602,0,0,0,0,5700,0
DATA 1083,582,0,0,0,0,4833,0
DATA 1085,843,129,0,0,0,4839,0
DATA 5286,242,240,260,0,0,10876,3450
DATA 4086,262,240,260,0,0,10876,3450
DATA 5736,242,303,240,280,0,10876,3450
DATA 1087,982,0,0,0,0,3488,6041
DATA 1538,282,303,280,240,0,10876,3450
DATA 5889,943,1034,0,0,0,6300,0
DATA 166,682,20,0,0,0,8176,3450
DATA 170,883,16,0,0,0,6481,0
DATA 170,883,15,300,0,0,8176,3450
DATA 6040,823,782,780,800,0,10876,3450
DATA 5259,42,20,40,0,0,10876,3450
DATA 172,1262,400,0,0,0,8176,3450
DATA 6192,1043,323,1063,1040,1340,10876,6663
DATA 176,169,149,404,240,0,8176,3450
DATA 3785,843,129,460,120,0,8026,8700
DATA 4650,722,720,120,700,0,8909,8923
DATA 0,200,0,0,0,0,8903,11400
DATA 6490,823,0,0,0,0,3495,11627
DATA 7050,116,100,0,0,0,6833,0
DATA 7245,962,0,0,0,0,3471,0
DATA 4823,163,80,160,20,0,8759,12223
DATA 0,800,20,0,0,0,11931,3484
DATA 6040,832,0,0,0,0,6465,0
DATA 196,1122,380,0,0,0,8156,11423
DATA 7500,0,0,0,0,0,6496,0
DATA 159,204,100,0,0,0,8176,3450
DATA 1547,1163,1160,1120,200,0,7862,3450
DATA 4350,702,364,320,0,0,8157,11423
DATA 4350,642,360,0,0,0,8454,11423
DATA 157,0,0,0,0,0,7050,0
DATA 198,642,360,0,0,0,8454,11423
DATA 4050,762,0,0,0,0,7263,0
DATA 4050,582,580,600,0,0,10876,0
DATA 5283,562,793,16,0,0,6499,0
DATA 5283,562,600,580,0,0,8903,11473
DATA 0,16,1040,260,0,0,9300,0
DATA 4849,623,620,0,0,0,3509,0
DATA 181,1002,0,0,0,0,7520,9450
DATA 176,404,148,420,0,0,8176,3450
DATA 5880,1303,0,0,0,0,7650,0
DATA 5878,943,1033,0,0,0,15300,0
DATA 5878,943,1034,0,0,0,15403,0
DATA 5889,1023,0,0,0,0,15600,0
DATA 1550,943,314,300,1020,0,11174,10523
DATA 7650,943,314,300,1020,0,11174,10523
DATA 1539,1023,1020,0,0,0,11123,0
DATA 1550,303,300,0,0,0,11123,0
DATA 5274,903,920,520,360,0,8003,8023
DATA 0,900,0,0,0,0,8873,0
DATA 7800,282,0,0,0,0,15750,0
DATA 3351,423,308,0,0,0,8626,15973
DATA 0,0,0,0,0,0,13288,13307
DATA 0,0,0,0,0,0,8476,0
DATA 7950,64,440,0,0,0,1308,6204
DATA 176,404,168,280,0,0,8176,3450
DATA 4350,84,60,0,0,0,8176,3450
DATA 8152,0,0,0,0,0,3521,0
DATA 1507,3,0,0,0,0,7823,0
DATA 5259,84,0,0,0,0,6482,4950
DATA 175,1242,0,0,0,0,3559,0
DATA 1350,3,27,0,0,0,6450,0
DATA 1507,703,700,0,0,0,7823,0
DATA 5903,1423,0,0,0,0,16500,0
DATA 1505,24,40,0,0,0,8176,3450
DATA 8250,404,0,0,0,0,16650,0
DATA 8550,4,0,0,0,0,0,0
DATA 5280,1303,0,0,0,0,5400,0
DATA 4814,363,440,0,0,0,8118,0
DATA 186,262,140,0,0,0,8176,3450
DATA 7200,0,0,0,0,0,16800,0
DATA 5100,543,0,0,0,0,16950,0
DATA 2436,282,0,0,0,0,17100,0
DATA 7800,404,0,0,0,0,17250,0
DATA 8700,0,0,0,0,0,9450,0
DATA 4367,82,0,0,0,0,10616,10956
DATA 0,440,0,0,0,0,1158,8141
DATA 2722,404,148,0,0,0,6567,17700
DATA 2722,404,168,160,1260,240,9023,9300
DATA 2722,404,140,1260,420,0,8723,9300
DATA 5272,404,168,0,0,0,6567,17850
DATA 5272,148,404,140,1260,240,9023,9300
DATA 5272,404,160,1260,280,0,8723,9300
DATA 1527,523,660,0,0,0,7823,0
DATA 204,40,0,0,0,0,8770,0
DATA 1055,184,0,0,0,0,3488,6041
DATA 1087,184,0,0,0,0,3488,6041
DATA 1055,982,0,0,0,0,3488,6041
DATA 7050,0,0,0,0,0,6750,0
DATA 7950,0,0,0,0,0,3562,0
DATA 183,582,260,0,0,0,8176,3450
DATA 6000,0,0,0,0,0,18112,0
DATA 8250,0,0,0,0,0,5064,0
DATA 5272,1262,0,0,0,0,4833,0
DATA 1555,0,0,0,0,0,9900,0
DATA 6450,0,0,0,0,0,18150,0
DATA 1106,0,0,0,0,0,9900,0
DATA 1062,352,0,0,0,0,17100,0
DATA 7800,24,0,0,0,0,18300,0
DATA 7800,60,20,0,0,0,12232,10950
DATA 0,96,60,0,0,0,723,12150
DATA 0,95,60,0,0,0,18681,0
DATA 1558,1382,0,0,0,0,18793,0
DATA 3327,672,0,0,0,0,18900,0
DATA 3351,423,0,0,0,0,15988,13307
DATA 3300,426,0,0,0,0,17227,0
DATA 3300,423,0,0,0,0,6578,0
DATA 5270,0,0,0,0,0,19350,0
DATA 4070,0,0,0,0,0,6450,0
DATA 167,64,0,0,0,0,19500,0
DATA 8875,1242,0,0,0,0,3450,0
DATA 8100,0,0,0,0,0,19650,0
DATA 900,0,0,0,0,0,6450,0
DATA 209,0,0,0,0,0,6582,0
DATA 1086,424,0,0,0,0,4833,0
DATA 1110,1403,0,0,0,0,19988,0
DATA 159,22,706,60,0,0,8176,3450
DATA 9000,0,0,0,0,0,20100,0
DATA 4861,1043,323,1063,1040,1340,10876,6663
DATA 159,64,706,40,0,0,8176,3450
DATA 9450,0,0,0,0,0,3535,0
DATA 9766,0,0,0,0,0,3450,0
DATA 9900,0,0,0,0,0,17100,0
DATA 10050,0,0,0,0,0,3450,0
DATA 4800,0,0,0,0,0,18750,0
DATA 10350,0,0,0,0,0,3488,0
DATA 2712,341,65,340,1380,0,8903,20250
DATA 2712,341,62,340,0,0,3503,20400
DATA 1112,103,0,0,0,0,20550,0
DATA 5850,0,0,0,0,0,20700,0
DATA 1103,1423,0,0,0,0,5400,0
DATA 1089,1023,0,0,0,0,5400,0
DATA 10650,0,0,0,0,0,9900,0
DATA 1050,0,0,0,0,0,11438,0
DATA 44

REM vocab
DATA "AUT","ANY"
DATA "GO","NORTH"
DATA "*RUN","SOUTH"
DATA "*WAL","EAST"
DATA "*ENT","WEST"
DATA "*USE","UP"
DATA "TIE","DOWN"
DATA "LOO","SHE"
DATA "*EXA","*END"
DATA "TO","WIN"
DATA "GET","*BOX"
DATA "*TAK","*LED"
DATA "*PIC","MIR"
DATA "*CAT","TOR"
DATA "*REM","BOT"
DATA "*MOV","*BLO"
DATA "UNL","BED"
DATA "*EXT","POL"
DATA "PUT","*FLA"
DATA "*DRO","WAT"
DATA "*LEA","OVE"
DATA "*LOW","RIN"
DATA "LIG","DUM"
DATA "*BUR","TAB"
DATA "*IGN","PAC"
DATA "EMP","TOI"
DATA "*SPI","ROO"
DATA "CLO","CIG"
DATA "*SHU","POS"
DATA "CLI","*CAR"
DATA "SLE","LET"
DATA "UNT","GAT"
DATA "EAT","*CRO"
DATA "*DRI","COF"
DATA "SMO","*LID"
DATA "OPE","VIA"
DATA "*LIF","DOO"
DATA "*RAI","CAS"
DATA "LOC","LOC"
DATA "REA","NOT"
DATA "WIT","FIL"
DATA "KIL","*NAI"
DATA "*ATT","BAT"
DATA "CUT","*VAM"
DATA "*BRE","*DRA"
DATA "*FIL","BEL"
DATA "*TRI","PAS"
DATA "WAI","POR"
DATA "PUL","PIT"
DATA "*RIN","GAR"
DATA "FIN","CLI"
DATA "UNC","MAT"
DATA "HEL","GAM"
DATA "JUM","MEM"
DATA "SAV","SLE"
DATA "OUT","INV"
DATA "*EXI","NEC"
DATA "FLY","*BIT"
DATA "QUI","GLA"
DATA "FLU","VEN"
DATA "JAM","DUS"
DATA "*SMA","STA"
DATA "*BUS","COA"
DATA "SAY","PIL"
DATA "*YEL","MAL"
DATA "MAK","DAI"
DATA "SCO","KEY"
DATA "SME",""
DATA "*SNI",""
DATA "FEE",""
DATA "*TOU",""
DATA "INV",""

REM rooms
DATA 0,0,0,0,0,0,""
DATA 0,0,0,0,0,0,"*I'm lying in a large brass bed"
DATA 11,0,0,0,0,0,"bedroom"
DATA 0,0,0,0,0,0,"*I'm on A ledge outside An open window"
DATA 0,0,0,0,0,0,"*I'm hanging on the end of a sheet, I made a fold in the sheet so I can leave things here. There's a window box here on the side of the castle"
DATA 0,0,0,0,0,0,"flower box outside An open window"
DATA 0,19,0,0,0,0,"CRYPT"
DATA 0,0,0,21,0,0,"closet"
DATA 0,11,0,0,0,0,"Bathroom"
DATA 0,0,17,11,0,0,"*I'm outside the castle"
DATA 0,0,0,0,0,0,"DOORLESS room"
DATA 8,2,9,12,0,0,"hall inside the castle"
DATA 0,0,11,0,0,0,"kitchen"
DATA 0,0,0,0,6,0,"large COFFIN"
DATA 0,0,0,0,0,0,"pAntry"
DATA 0,0,0,12,0,0,"giant SOLAR OVEN"
DATA 0,0,0,0,21,0,"Dungeon"
DATA 0,0,0,9,0,0,"Meandering path"
DATA 0,0,0,0,0,0,"Pit"
DATA 6,10,0,0,0,0,"Dark passage"
DATA 0,0,0,0,0,0,"dumb-waiter by a room"
DATA 0,0,0,0,0,16,"workroom"
DATA 0,0,0,0,0,0,"LOT OF TROUBLE! (And so Are you!)"

REM messages
DATA ""
DATA "Welcome to ADVEWNTURE: 5 'THE COUNT'. Dedicated to Alvin Files. "
DATA "I see I was put to bed. Its AFternoon & I overslept!"
DATA "Its getting DARK outside!"
DATA "I'm getting very tired"
DATA "The sun has set!"
DATA "I hear the"
DATA "Flagpole splinter"
DATA "I fall to my death"
DATA "Sheet came untied"
DATA "A bAt flew by & LAUGHED At me!"
DATA "He smelled something & flew on"
DATA "he settled on my NECK!"
DATA "The torch burnt thru the sheet!"
DATA "What a DREAM I just had !!!!"
DATA "I've a hunch I've been robbed!"
DATA "Odd, I wasn't bitten last nite!"
DATA "My neck looks BITTEN!"
DATA "I've turned into A VAMPIRE!"
DATA "The cigArette went out & the coffin VANISHED"
DATA "YOU HAVE LOST!"
DATA " A bell rings somewhere: 'DING-DONG'. "
DATA "Tell me to what? i.e. 'TO TREE'"
DATA "OK"
DATA "I appear pale & drained!"
DATA "I think I can only take"
DATA "more days of this!"
DATA "TODAY I look healthy..."
DATA "I'm up in A cAstle, in the distAnce I see VOODOO CASTLE. There'sstAnding room outside the window"
DATA "Strange watch says"
DATA "moves till sunset"
DATA "There's A tremendous Amount of HEAT & SUNLIGHT coming out."
DATA "There's something there, maybe I should"
DATA "go there?"
DATA "I'm real PEPPY now!"
DATA "There's A COUGHIN (sic) in the room."
DATA "There's writing on it."
DATA "Mob looks ANGRY"
DATA "I see nothing special."
DATA "empty it?"
DATA "EXCEPT"
DATA "I notice a DARK WINDOW UNDER the bedroom window ledge!"
DATA "The paper clip is in the way!"
DATA "Sorry I can't do that"
DATA "I drive the stake through his HEART. The townspeople come and carry me off cheering! (Don't worry, I tell them I owe it all to you!!!!)"
DATA "Some time passes..."
DATA "I don't know where to look"
DATA "Try: 'CLIMB SHEET'"
DATA "I closed the lid and I suffocated!"
DATA "Its LOCKED from INSIDE!"
DATA "Peasants attack me, I was SUPPOSED to destroy the VAMPIRE!"
DATA "DeAr DRACKY, Don't open this present till HALLOWEEN.  signed COUNT YORGA."
DATA "Its for DRACULA, its and EATING & GHOULING bill from a local mortuary!"
DATA "There's a note PAPER CLIPPED to the postcard"
DATA "Postmaster says he'll be delivering a package tomorrow."
DATA "I'm A pretty good LOCK PICK!"
DATA "The match flares up briefly ..."
DATA "and then goes out!"
DATA "as I fall"
DATA "Ah that's much better!"
DATA "Dear Adventurer:  I wanted to take this time (1 move!) to thank ALL of you out there in ADventureland for the fantastically warm reception Adventure has received! Happy Adventuring,  Scott Adams (Chief Adventurer)"
DATA "Try: 'GO ROOM'"
DATA "Nothing happens."
DATA "COUGH!"
DATA "How?"
DATA "I know how to RAISE and LOWER this thing!"
DATA "I'm At the tip of the pole"
DATA "It won't go any"
DATA "lower"
DATA "higher"
DATA "It doesn't work!"
DATA "Tell me with what? Like: 'WITH FIST'"
DATA "GET UP you sleepy head!"
DATA "of you always asking for help!"
DATA "Try examining things."
DATA "Yuck!"
DATA "First I need an unlit cigarette."
DATA "I've no matches!"
DATA "I'm not an arsonist!"
DATA "Its already open."
DATA "Try: 'CLIMB POLE'"
DATA "Try: 'SAVE GAME'"
DATA "A bat might make it, but not me!"
DATA "A choooooo"
DATA "Maybe I should BREAK it?"
DATA "Mirror shatters! That's 7 years bad luck!"
DATA "I set the mirror on the pillow."
DATA "It bears the Family Crest of DRACULA!"
DATA "try looking at it"

REM objects
DATA "Sheets/SHE/",1
DATA "Open window",0
DATA "Closed window",2
DATA "Pillow/PIL/",1
DATA "Flag pole in wall",3
DATA "Coat-of-arms/COA/",9
DATA "Sheet going into window",0
DATA "End of sheet tied to flAgpole",0
DATA "1 nodoz tablet/TAB/",0
DATA "LIT torch/TOR/",0
DATA "Loose end of sheet going over ledge",0
DATA "End of sheet hAnging here",5
DATA "Closed & UNLOCKED door",0
DATA "Open door",0
DATA "Locked door",21
DATA "Paper clip/CLI/",0
DATA "Tent STAKE/STA/",-1
DATA "Mirror/MIR/",8
DATA "Bottle of type V blood/BOT/",0
DATA "Empty bottle/BOT/",0
DATA "Unlit torch/TOR/",18
DATA "Sulfur mAtches/MAT/",14
DATA "2 small holes in my neck",0
DATA "3 no-doz tablets/TAB/",0
DATA "2 nodoz tablets/TAB/",0
DATA "Piles of extinguished cigArettes",6
DATA "Pack of Transylvanian cigarettes/PAC/",0
DATA "LIT cigArette/CIG/",0
DATA "Stone COFFIN",0
DATA "Coffin is open",0
DATA "Coffin is closed",0
DATA "Dusty clove of garlic/GAR/",14
DATA "DARK pit",16
DATA "Cigarette/CIG/",0
DATA "Brass bed",2
DATA "The other end of the sheet/SHE/",0
DATA "Sheet tied to bed",0
DATA "Pocket watch/WAT/",8
DATA "Coffin lid is open",13
DATA "Lockable slide bolt",13
DATA "Broken slide lock",0
DATA "Large tempered nail file/FIL/",15
DATA "Small Vial/VIA/",7
DATA "Large dark lens set in ceiling",15
DATA "Oven",12
DATA "Package/PAC/",0
DATA "Empty box/WIN/",0
DATA "Postcard/POS/",0
DATA "Bell pull",9
DATA "Castle towering above me",17
DATA "Fence with an open gate & a crowd beyond",17
DATA "Note/NOT/",0
DATA "DRACULA/BAT/",0
DATA "Rubber mallet/MAL/",21
DATA "Iron rings in wAll",16
DATA "Sheet tied to ring going into pit",0
DATA "DARK foreboding passage",0
DATA ".",0
DATA "Full size portrait of DRACULA/POR/",10
DATA "Window",10
DATA "Vent",6
DATA "Daisies/DAI/",5
DATA "Toilet",8
DATA "Dumb-waiter",12
DATA "Vent",21
DATA "Letter/LET/",0
DATA "Sign says: 'POSITIVELY NO SMOKING ALLOWED HERE!' signed Dracula",6
DATA "Mouldy old skeleton with a stake in the rib cage",0
DATA "./KEY/",0
DATA "Broken glass",0
DATA "Century worth of dust/DUS/",7
DATA "Memo tacked to the door",21
DATA ".",0


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


