NEW
AUTO
REM Program must be run on a BBC Micro with a 65(C)02 Co-processor
LOMEM=&C000
HIMEM=&F800
ONERROR:ONERROROFF:PRINT:REPORT:PRINT'ERL:CLOSE#0:END

REM optional bit-flags
DATA 1

REM header
REM IL,CL,NL,RL,MX,R,TT,ln,LT,ML,TR
DATA 39,147,63,18,25,1,8,4,-1,98,18

REM actions
DATA 100,29,20,0,0,0,208,0
DATA 100,44,562,140,20,0,358,11850
DATA 100,148,16,47,0,0,513,0
DATA 25,64,0,0,0,0,600,0
DATA 25,64,0,0,0,0,750,0
DATA 40,104,0,0,0,0,900,0
DATA 33,168,189,0,0,0,1050,0
DATA 100,282,189,180,0,0,1258,0
DATA 100,333,0,0,0,0,11550,0
DATA 100,184,333,0,0,0,1438,9450
DATA 100,204,333,0,0,0,1438,9450
DATA 100,15,333,0,0,0,1438,9450
DATA 25,222,144,0,0,0,1500,0
DATA 25,222,144,0,0,0,1650,0
DATA 25,222,144,0,0,0,1800,0
DATA 15,182,225,347,0,0,1950,0
DATA 100,468,185,460,0,0,9000,0
DATA 4,164,0,0,0,0,2163,0
DATA 2,48,367,0,0,0,2250,0
DATA 100,184,128,0,0,0,2488,9450
DATA 50,184,0,0,0,0,2550,0
DATA 100,184,222,0,0,0,2788,13273
DATA 0,300,280,520,280,220,9362,8250
DATA 100,204,68,89,0,0,2938,12073
DATA 0,220,140,80,0,0,12062,8700
DATA 100,204,288,374,0,0,3080,12073
DATA 0,360,260,180,320,0,8012,8700
DATA 100,473,224,0,0,0,3238,0
DATA 100,16,224,0,0,0,538,9450
DATA 100,473,244,0,0,0,3300,0
DATA 100,204,473,0,0,0,3538,9450
DATA 100,284,302,46,0,0,3688,9450
DATA 100,284,302,129,120,1000,3808,13279
DATA 100,128,0,0,0,0,11550,0
DATA 100,128,816,915,0,0,3988,9450
DATA 100,128,616,715,0,0,4138,4273
DATA 0,0,0,0,0,0,13263,0
DATA 100,128,416,515,0,0,4438,9450
DATA 100,15,304,562,60,0,4579,0
DATA 100,324,442,449,440,0,4708,0
DATA 100,344,349,340,0,0,4888,8700
DATA 100,368,36,0,0,0,5027,0
DATA 100,368,35,0,0,0,5188,13273
DATA 0,360,0,0,0,0,10560,9150
DATA 907,2,0,20,40,0,10853,9600
DATA 1058,23,0,0,0,0,5250,0
DATA 1059,43,0,0,0,0,5400,0
DATA 910,62,26,0,0,0,5550,0
DATA 910,62,21,60,80,0,10864,0
DATA 160,82,40,0,0,0,8164,0
DATA 161,82,40,0,0,0,8164,0
DATA 1512,148,562,560,140,0,5755,9073
DATA 0,0,160,280,100,0,11908,9300
DATA 1813,102,0,0,0,0,5850,0
DATA 1814,122,0,0,0,0,6000,0
DATA 2265,282,0,0,0,0,6150,0
DATA 3015,282,209,200,0,0,6358,0
DATA 2267,104,208,229,320,0,6538,8023
DATA 0,220,0,0,0,0,12080,8773
DATA 0,400,280,340,0,0,11912,0
DATA 2721,24,321,0,0,0,1438,9450
DATA 2721,164,321,320,0,0,6688,8323
DATA 0,340,480,260,180,260,8012,9373
DATA 0,0,240,0,0,0,11908,0
DATA 3174,213,0,0,0,0,6750,0
DATA 3174,185,423,443,0,0,6900,0
DATA 3174,182,592,0,0,0,7050,0
DATA 3174,182,443,423,583,460,7258,0
DATA 3628,468,0,0,0,0,7430,12073
DATA 0,440,580,200,460,0,8305,8010
DATA 3600,468,0,0,0,0,7588,4413
DATA 3174,0,0,0,0,0,7650,0
DATA 1830,663,344,0,0,0,15300,0
DATA 1830,182,503,180,140,0,15512,12073
DATA 0,580,300,0,0,0,12062,0
DATA 1830,49,182,0,0,0,15600,0
DATA 1830,328,182,0,0,0,15750,0
DATA 1830,48,182,0,0,0,15900,0
DATA 1831,222,109,0,0,0,16050,0
DATA 3781,222,109,100,0,0,16258,0
DATA 1831,222,108,0,0,0,16350,0
DATA 1832,242,164,0,0,0,16588,2323
DATA 0,40,240,360,560,300,8762,9300
DATA 184,262,40,180,340,340,11162,8164
DATA 1067,302,0,0,0,0,16650,0
DATA 1065,282,0,0,0,0,16800,0
DATA 1815,282,0,0,0,0,16950,0
DATA 4235,224,161,380,160,0,17172,0
DATA 1836,402,0,0,0,0,17250,0
DATA 4386,462,400,0,0,0,17488,8323
DATA 0,460,420,440,320,280,8302,9358
DATA 187,462,0,0,0,0,3538,9450
DATA 1088,502,0,0,0,0,17550,0
DATA 1089,481,0,0,0,0,17700,0
DATA 4650,481,269,264,260,0,17938,8773
DATA 0,500,460,240,0,0,8012,0
DATA 2267,128,41,0,0,0,4288,9450
DATA 4990,541,128,540,800,0,18055,11850
DATA 5142,128,716,815,600,0,18229,0
DATA 4650,128,516,615,300,340,18362,12073
DATA 0,520,120,0,0,0,12055,9073
DATA 0,0,560,40,0,0,11912,0
DATA 4990,541,129,0,0,0,6750,0
DATA 5285,381,562,380,0,0,18505,11550
DATA 3012,69,59,0,0,0,18688,11923
DATA 0,60,560,540,0,0,8772,0
DATA 3012,562,56,0,0,0,18750,0
DATA 1812,562,0,0,0,0,18900,0
DATA 5412,562,0,0,0,0,19050,0
DATA 2262,562,0,0,0,0,6150,0
DATA 5293,222,108,623,0,0,19280,12073
DATA 0,220,180,620,180,0,9362,0
DATA 1094,601,69,0,0,0,19350,0
DATA 1094,601,634,620,600,0,19575,0
DATA 1094,601,0,0,0,0,19650,0
DATA 1093,621,0,0,0,0,19800,0
DATA 4395,642,706,53,40,700,20005,7800
DATA 6017,663,302,300,720,0,20155,8023
DATA 0,740,760,0,0,0,8303,0
DATA 5296,663,302,300,720,0,20155,8023
DATA 0,740,760,0,0,0,8303,0
DATA 2295,701,642,640,280,0,20305,8323
DATA 0,740,660,680,0,0,8003,7950
DATA 2295,642,36,0,0,0,20400,0
DATA 2295,642,369,420,360,0,20629,8700
DATA 4996,663,344,0,0,0,5188,13273
DATA 0,360,0,0,0,0,10560,9150
DATA 1099,344,0,0,0,0,20700,0
DATA 1096,344,0,0,0,0,20700,0
DATA 1832,364,0,0,0,0,20850,0
DATA 6200,364,0,0,0,0,21063,0
DATA 5400,282,0,0,0,0,21150,0
DATA 5400,302,0,0,0,0,21150,0
DATA 5400,242,0,0,0,0,21150,0
DATA 5400,0,0,0,0,0,21300,0
DATA 6300,0,0,0,0,0,21450,0
DATA 6450,0,0,0,0,0,21600,0
DATA 6750,0,0,0,0,0,21750,0
DATA 4650,0,0,0,0,0,21900,0
DATA 1050,0,0,0,0,0,22135,0
DATA 7101,780,0,0,0,0,11100,0
DATA 7200,0,0,0,0,0,9900,0
DATA 1552,0,0,0,0,0,9900,0
DATA 7350,0,0,0,0,0,9750,0
DATA 7553,0,0,0,0,0,10650,0
DATA 7650,0,0,0,0,0,9600,0
DATA 7853,0,0,0,0,0,22263,0
DATA 7800,0,0,0,0,0,22263,0
DATA 44

REM vocab
DATA "AUT","ANY"
DATA "GO","NORTH"
DATA "*ENTE","SOUTH"
DATA "*FOLL","EAST"
DATA "*RUN","WEST"
DATA "*WALK","UP"
DATA "OPEN","DOWN"
DATA "EXAM","WARD"
DATA "*READ","ROBE"
DATA "*X","DAGG"
DATA "TAKE","DOOR"
DATA "*GET","OUT"
DATA "TALK","OPHE"
DATA "*ASK","BERN"
DATA "*HELL","FRAN"
DATA "KILL","QUEE"
DATA "*STAB","*GERT"
DATA "*LUNG","CLAU"
DATA "DROP","*RAT"
DATA "*DROP","*ARRA"
DATA "YELL","*MAN"
DATA "WRIT","POLO"
DATA "*BEQU","*GUTS"
DATA "*TELL","*CORP"
DATA "TO","WILL"
DATA "CHEE","*TEST"
DATA "*APPL","*INST"
DATA "*CLAP","*DENM"
DATA "BUY","FORT"
DATA "TRIC","*NORW"
DATA "*FOOL","HORA"
DATA "MONO","PLAY"
DATA "*SOLI","GHOS"
DATA "DRIN","*KING"
DATA "CLEN","STAI"
DATA "GIVE","FLOW"
DATA "KISS","SAIL"
DATA "*LOVE","SHIP"
DATA "*FUCK","GRAV"
DATA "*SCRE","SKUL"
DATA "POIS","WATE"
DATA "ADMI","*BOTT"
DATA "MACB","FIST"
DATA "SLEE","SCRI"
DATA "*DREA","BOOK"
DATA "HELP","LAER"
DATA "*HINT","GOBL"
DATA "BEAR","*CUP"
DATA "INVE","*POIS"
DATA "SCOR","FOIL"
DATA "SAVE","FAIL"
DATA "LOOK","HAML"
DATA "QUIT","INVE"
DATA "","GAME"
DATA "","MONE"
DATA "","INKP"
DATA "","*PAD"
DATA "","CAPE"
DATA "","PEN"
DATA "","PAPE"
DATA "","SEAL"
DATA "","RING"
DATA "","CROW"
DATA "","XYZC"

REM rooms
DATA 0,0,0,0,0,0,""
DATA 0,0,0,0,0,0,"*My princely bedroom"
DATA 7,1,0,4,0,0,"Hallway"
DATA 0,0,0,8,0,7,"Watchtower"
DATA 0,0,2,5,0,0,"Royal Bedroom"
DATA 0,0,4,0,0,0,"*My auntmother Gertrude's closet"
DATA 0,0,7,16,0,0,"Treasury"
DATA 10,2,9,6,3,0,"Grand Room"
DATA 0,0,3,0,0,0,"Platform overlooking Elsinore Village"
DATA 0,14,0,7,0,0,"Throne Room"
DATA 11,7,0,0,0,0,"Castle Gates"
DATA 15,10,13,12,0,0,"*Elsinore village. Famous FLOWER SHOPS"
DATA 0,0,11,0,0,0,"Docks"
DATA 0,0,0,11,0,0,"Cemetery"
DATA 9,0,0,0,0,0,"Chapel complete with font"
DATA 0,11,0,0,0,0,"Polonius Manor"
DATA 0,0,6,0,0,0,"Library"
DATA 0,0,0,0,0,0,"Tourney Room"
DATA 0,0,0,0,0,0,"Purgatory, be JUDGED by your FATHER!"

REM messages
DATA ""
DATA "Welcome to GHOST KING S.A.L.A.D. #1|  Scott Adams Literary Adventure|            Diversions||This should have been 1980's hottest|game||I am PRINCE HAMLET|My father is DEAD, KILLED by my| unclefather|What are we going to DO ["
DATA "about it?|"
DATA "UH OH Ophelia tracked me down again|Looks VERY upset now|'I was the more deceived!'"
DATA "Ophelia THROWS herself at my feet!|I TRIP and break my NECK!"
DATA "Stand HO! Who's THERE?"
DATA "Have you had QUIET guard"
DATA "Mother has a LOT to answer for!"
DATA "I hear WHISPERS in the queens chamber"
DATA "'What wilt thou do? Thou wilt not murderme?!'|Calls HELP"
DATA "The guards link me to Polonius' body!|I am EXECUTED!"
DATA "'Anon he finds him striking too short!'"
DATA "'The bold winds SPEECHLESS'"
DATA "'This is too long!'"
DATA "Here sweet lord at your SERVICE"
DATA "Too SLIPPERY! I FALL!"
DATA "A ghostly voice cries SWEAAAAAARRRRR!"
DATA "Wrong WAY!|I feel a blood vessel go *POP*|and collapse in embarrassment!"
DATA "Just BEING here makes me SO ANGRY"
DATA "The court assembles to watch|The players act the MURDER of GONZAGO|The evil BROTHER poisons the good KING|Claudius SCREAMS and runs to the chapel|*HA! I did very well note him!*|Servants call LIGHTS and all scatter"
DATA "Rosencrantz & Guildenstern here, WHY?!|'If you delight not in man, what lenten entertainment the players shall receive from you.  They are coming to offer you|service!' They SLITHER away"
DATA "OSRIC here with a DUEL CHALLENGE!|The king hath wagered with LAERTES|he will not exceed you three hits|It would come to immediate trial!|meet for tourney beneath the throne"
DATA "Rosencrantz & Guildenstern return|'Everything is bent for England|Come away with us, lord!'"
DATA "Rosencrantz & Guildenstern practically|SHOVE me onto the ship!"
DATA "Rosencrantz & Guildenstern grab me and|force me aboard the ship. We sail| for|England where I learn Claudius conspiredto ARRANGE MY EXECUTION there!"
DATA "*Now might I do it pat!* But I brought|NO weapon!|I feel a blood vessel go *POP* and|collapse in embarrassment!"
DATA "Claudius KNEELS and PRAYS!|He does not see me, *now might I do it|pat!*||UH-OH! Feel a tickle in my throat!"
DATA "I *COUGH* noisily! SPOOKS Claudius!|He crashes into the font where I hide|It falls and CRUSHES me"
DATA "CAN'T resist anymore!"
DATA "Stabbed him! Feels GOOD!|But I killed him as he prayed|And sent this same villain to Heaven!|Guards arrive to dispatch me, I DIE in|eternal SHAME"
DATA "*Break my heart for I must hold my| tongue!*|I COLLAPSE into melancholy and NEVER| recover"
DATA "Ophelia looks VERY happy to see me"
DATA "Messenger brings news that NORWAYS|FORTINBRAS marches on Poland.|*Witness this army of such MASS and| CHARGE|I see the imminent DEATH of twenty| thousand men!*"
DATA "The duel is SET. Claudius summons CUPS|tosses a pearl in one 'to thy health'|Laertes picks a sharp FOIL of a length|'Come MY LORD' he says. ENGARDE!"
DATA "I feel WEAKER"
DATA "The poison OVERCOMES me|*I DIE Horatio! Tell my story!*||sound of a DRUM then all is dark"
DATA "It's DEPRESSING"
DATA "PLENTY sharp"
DATA "Too sad, need protection"
DATA "*GET THEE TO A NUNNERY!* I shout|she SHRIEKS back 'I was the more|deceived! O woe is me!'|and runs away"
DATA "When I'm upset I CLENCH FIST to calm|down"
DATA "How are you, beautiful?"
DATA "Too mean"
DATA "feels so GOOD!|A man behind the arras shouts HELP|It must be that rat CLAUDIUS!|In the incestuous pleasure of his bed!"
DATA "*DEAD FOR A DUCAT!*|Wait NOT CLAUDIUS at all!|I killed Polonius, Ophelia's dad|'What a RASH and BLOODY deed!' Gertrude|runs away!|Time to LUG THE GUTS!"
DATA "*The body is with the King|but the King is not with the body*|Polonius disappears over the side!|Dropped something|I see a crowd near the cemetery"
DATA "No thanks"
DATA "Need a witness"
DATA "My lord I cannot properly witness| without my SEAL|I have misplaced it!"
DATA "To whom? (type TO NAME)"
DATA "Horatio is SHOCKED 'Young Fortinbras?!|Of unimproved mettle hot and full?!'|*DENMARK'S A PRISON Fortinbras is| WELCOME to it!*|he SEALS the will and solemnly files it|'Take this inkpad, my lord. Twas never| mine|and never sh["
DATA "all I notarize again!'"
DATA "An unworthy choice! *What an ass am I!*"
DATA "A weighty matter for pen paper and|willing WITNESS"
DATA "'I am more an antique Roman than a Dane|Here's yet some liquor left' he REACHES|for the goblet|*GIVE ME the cup! Let go by heaven I'll|have't!*"
DATA "I must to POLONIUS MANOR and seal some|legal business pertaining to their|deaths|More in sorrow than in anger!"
DATA "My lord I think I saw him yesternight|a FIGURE like your FATHER!"
DATA "He looks SAD!|'You will lose this wager my lord'|*THE READINESS IS ALL*"
DATA "I fear for Denmark with young Fortinbrasof Norway and his shark'd up list of|lawless resolutes|if only I knew your WILL"
DATA "'And PASSION in the GODS.'|They look disappointed"
DATA "They bow and look VERY happy!"
DATA "We accept commissions my lord"
DATA "If thou didst ever thy dear father| love--|Revenge his foul and most unnatural| murder|Send Claudius to HELL|And bring me the *treasures* of my| ENEMIES!"
DATA "The PRETENDER, my unclefather"
DATA "My mother who married my uncle who|killed my FATHER!"
DATA "Good Hamlet cast thy nighted colour OFF"
DATA "very pretty DAnish flowers!"
DATA "YOHO!"
DATA "I borrow Rosencrantz's pen and|FORGE LETTERS showing he & Guildenstern|are TRAITORS to be marked for death|Sailor takes my FALSE FRIENDS to Englandwithout me!"
DATA "What the fair Ophelia?! I loved her!"
DATA "My gorge rises at it"
DATA "*Alas poor Yorick! I knew him Horatio|To what base uses we may return!*||funeral procession comes. BURYS Ophelia|Her brother Laertes YELLS as he leaves|'THE DEVIL TAKE THY SOUL!'"
DATA "Throat feels better WHEW!|oh no TERRIBLE thought|*This is hire and salary, not revenge!*|HOW can I resist??"
DATA "It WORKED! I am more calm now|But he took my father GROSSLY|feel so torn!"
DATA "*Am I then reveng'd when he is FIT|and SEASONED for his passage? No!|UP, sword! Prolong thy sickly days*||Claudius mumbles amen and SKULKS off"
DATA "GOOD idea!|Or maybe not! She's so DEMANDING!"
DATA "She runs off crying! WHEW!|Dropped something"
DATA "Try something softer first"
DATA "Importune me with love"
DATA "I did love her once"
DATA "We can play the MURDER OF GONZAGO!|They exit to the throne room|The play is ABOUT to begin!"
DATA "Too distracted now, try later"
DATA "Words words words|Paper I used as a bookmark FALLS out!"
DATA "Wild and WHIRLING words"
DATA "Play script: The MURDER of GONZAGO!|about fratricide & other TERRIBLE acts|CLAUDIUS is also guilty of!"
DATA "We trade blows but more important we|trade WEAPONS!|'Part them they are incensed!'|Queen drinks, Claudius looks NERVOUS!"
DATA "'O yet defend me friends!'|I FORCE the poison down CLAUDIUS throat!*FOLLOW MY MOTHER*|He dies AT LAST"
DATA "Laertes COLLAPSES|'I am justly kill'd with mine OWN|treachery! The king! the kings to|blame!'||Gertrude CRUMPLES 'The drink! O my dear|Hamlet!'"
DATA "'they bleed on both sides!'|the QUEEN looks SAD"
DATA "'A very palpable hit!' says OSRIC|Laertes scores back with his FOIL|The wound BURNS!"
DATA "Looks FISHY to me"
DATA "My hour is almost come|Drop treasures and SCORE|or ADMIT FAILURE"
DATA "You are proved duller than the fat weed|that rots itself in ease!"
DATA "Danish tragedy, not GREEK!"
DATA "This is no DREAM its a serious tragedy!"
DATA "Angels and ministers of grace defend us"
DATA "*I could be bounded in a nut shell and|count myself a king of infinite space|were it not that I have bad DREAMS*"
DATA "What, art a heathen?|Try reading HAMLET!"
DATA "I assume the pose, nothing comes out"
DATA "Pretty ordinary Danish"
DATA "Drink deep ere you depart!"

REM objects
DATA "Wardrobe",1
DATA "*Robe*/ROBE/",0
DATA "Dagger/DAGG/",0
DATA "Closed door",1
DATA "Open door leads out",0
DATA "Bernardo",3
DATA "Francisco",3
DATA "couch for luxury & damned incest",4
DATA "Money/MONE/",6
DATA "Horatio",7
DATA "*Guildenstern inkpad*/INKP/",0
DATA "Players",0
DATA "GHOST of King Hamlet!",8
DATA "Staircase to Tourney Room",0
DATA "Queen Gertrude",0
DATA "Claudius",0
DATA "Dead Polonius/POLO/",0
DATA "*Polonius Cape*/CAPE/",0
DATA "Osric pointing to the TOURNEY STAIRS",0
DATA "Flowers/FLOW/",0
DATA "Sailor",12
DATA "*Rosencrantz Pen*/PEN/",0
DATA "blank paper/PAPE/",0
DATA "Ship",0
DATA "*Skull*/SKUL/",0
DATA "Ophelia's GRAVE",0
DATA "Rank offense SMELLS to HEAVEN",0
DATA "Water bottle/WATE/",0
DATA "Ophelia",0
DATA "Notary seal/SEAL/",0
DATA "Book/BOOK/",16
DATA "Script/SCRI/",0
DATA "Laertes",17
DATA "POISONED Goblet/GOBL/",0
DATA "*Queens ring*/RING/",0
DATA "*Laertes foil*/FOIL/",0
DATA "*THE CROWN*/CROW/",0
DATA "a pair of corpses",0
DATA "a pile of bodies",0
DATA "Affectionate tribute pastiche of W Shakespeare and S Adams by J Compton-test thanks to JJ Guest-Laura BK-Henrik A-Karona-Mike C-ahope1-Dokken-pdxiv-created in Mike T's ScottKit/XYZC/",0


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


