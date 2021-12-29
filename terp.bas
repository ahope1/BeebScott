REM COPYRIGHT SCOTT ADAMS. 1978

REM converted to BBC BASIC in 2020

REM B% = top-window-redraw flag 
MODE7:VDU23,0,10,8;0;0;0;23,0,11,12;0;0;0;:PRINT:DIM S% 255:vpos%=17:B%=1:*FX11,0

DIM arr% 5,CT%(8):CT%=0:!arr%=0:arr%!2=0:K%=0:TP$=STRING$(40,"*"):K$=TP$+TP$:TP$="":K$="":Z$="I'VE TOO MUCH TOO CARRY. TRY -TAKE INVENTORY-":Y$="YOU USE WORD(S) I DON'T KNOW":PROC1240:*FX21,0

R%=AR:CT%(8)=LT:SF%=0:INPUT"USE OLD 'SAVED' GAME? "K$
IFLEFT$(K$,1)="Y" INPUT"READY SAVED TAPE "K$:d=OPENIN("SAV"):INPUT#d,SF%,R%,CT%:FORX%=0TOIL%:INPUT#d,IA%(X%):NEXT:FORX%=0TO8:INPUT#d,CT%(X%):NEXT:FORX%=0TO5:BGET#d,arr%?X%:NEXT:CLOSE#d
CLS:PROCv:NV%(0)=0:PROC360



REM *** MAIN GAME LOOP ***

REPEAT IF B% PROCdRM2:B%=0
IF W%AND2 IF POS PRINT
PROCb:V.23,1,1;0;0;0;:INPUT"Tell me what to do? "TP$:V.23,1,0;0;0;0;:PRINT:PROC170
IF F% PRINT Y$:UNTIL0
PROC360:IF LT<0 EL. IFIL%<9 EL. IFIA%(9)=0 ELSE IFCT%(8)=0 ELSE CT%(8)=CT%(8)-1:PROCn:IFCT%(8)=0 SF%=SF% OR 2^16:PRINT"LIGHT HAS RUN OUT"ELSE IFCT%(8)<25PRINT"LIGHT RUNS OUT IN ";CT%(8);" TURN"CHR$(83*-(CT%(8)>1))"!"
NV%(0)=0:PROC360:UNTIL0



REM *** Parse input ***

REM Split input into verb NT$(0) and noun NT$(1)
DEFPROC170:K%=0:NT$(0)="":NT$(1)=""
FORX%=1TOLEN(TP$):K$=MID$(TP$,X%,1):IFK$=" " K%=1:NEXT ELSE NT$(K%)=LEFT$(NT$(K%)+K$,ln):NEXT
REM Assign verb to NV(0) and noun to NV(1)
IF LENNT$(0)=1 IF LENNT$(1)=0 Z%=INSTR("NSEWUD",NT$(0)):IF Z% NT$(0)="GO":NT$(1)=NV$(Z%,1):NV%(0)=1:NV%(1)=Z%:F%=0:ENDPROC
FORX%=0TO1:Z%=0:NV%(X%)=0:IFNT$(X%)=""Z%=1 ELSE FORY%=0TONL:K$=NV$(Y%,X%):IFLEFT$(K$,1)="*"K$=MID$(K$,2)
REM "Directional nouns" need truncating
IF Z% ELSE IFX%=1 IFY%<7 K$=LEFT$(K$,ln)
REM Change any synonym to the base-word that it's a synonym of
IF Z% ELSE IF NT$(X%)=K$ NV%(X%)=Y%:Y%=NL:NEXT:NV%(X%)=NV%(X%)+1:REPEAT NV%(X%)=NV%(X%)-1:UNTIL LEFT$(NV$(NV%(X%),X%),1)<>"*" ELSE NEXT
REM If verb unrecognised then return. If noun absent then return. If noun present and unrecognised then flag and return.
NEXT:F%=NV%(0)<1:IF F% ENDPROC ELSE IFLEN(NT$(1))>0 IF NV%(1)<1 F4%=-1:F%=0:ENDPROC ELSE F4%=0:ENDPROC



REM ***  Display room ***

DEFPROCdRM2
PROCn
VDU28,0,vpos%,39,0,12,26
PROCn:PROCb:IF SF% AND 2^15 IF IA%(9)<>-1 AND IA%(9)<>R% PRINT"I CAN'T SEE, ITS TOO DARK.":PROCv:ENDPROC
K%=-1:IFLEFT$(RS$(R%),1)="*"PROCo(MID$(RS$(R%),2)+".")ELSEPROCo("I'm in a "+RS$(R%)+".")
PROCn
K$="":FORZ%=0TOIL%:IF K% IF IA%(Z%)=R% PRINT SPC40 "VISIBLE ITEMS HERE:" SPC101;:V.11,11:K%=0
IF IA%(Z%)=R% PROC280:PROCo(CHR$(32*-(POS>0))+TP$+".")
NEXT:IF POS=0 PRINT SPC40;CHR$11; ELSE IF K% ELSE PROCn
K%=-1:FORZ%=0TO5:IF K% IFRM(R%,Z%)<>0PRINT SPC120:V.11,11,11:P."OBVIOUS EXITS: ";:K%=0
IFRM(R%,Z%)<>0PRINTNV$(Z%+1,1);" ";
REMNEXT:IFPOS PRINT':PROCv:ENDPROC ELSE PRINT:PROCv:ENDPROC
NEXT:PROCn:PRINT SPC40;:PROCv:ENDPROC

DEFPROCv
IF VPOS<4 V.31,0,4
PRINT STRING$(40,"_")
vpos%=VPOS-1
VDU28,0,24,39,vpos%,31,0,24-vpos%
ENDPROC


REM *** Get human-readable object name ***
DEFPROC280:TP$=IA$(Z%):IFRIGHT$(TP$,1)<>"/"ENDPROC ELSE FOR WW%=LEN(TP$)-1TO1 STEP-1:IFMID$(TP$,WW%,1)="/"TP$=LEFT$(TP$,WW%-1):WW%=1:NEXT:ENDPROC ELSE NEXT:STOP



REM *** Search for matching actions ***

REM set up the success/failure flags
DEFPROC360:F2%=-1:F%=-1:F3%=0

REM clear the continue-flag
cont=0

REM If GO {N/S/E/W/U/D}
IFNV%(0)=1 AND NV%(1)<7 PROC610:ENDPROC

REM Debug: beep when processing of auto-actions begins
REM IFNV(0)=0 V.7

REM Divide action data value by 150 to get verb-code V. If V=0 then this is an automatic action.
REM All automatic actions must precede all non-automatic actions.
FORX%=-I%*(NV%(0)<>0)TOCL:V=CA%(X%,0)DIV150:N=CA%(X%,0)MOD150

REM If non-auto action is hit when processing auto or continued actions then return.
IF NV%(0)=0 OR cont IFV<>0 X%=CL:NEXT:cont=0:ENDPROC

REM If continue-flag is set: 
REM  If V is zero but N isn't then reset the continue-flag:
REM   If auto action, then process conditions, else return. 
IF NOT cont ELSE IF V<>0 ELSE IF N=0 ELSE cont=0:IF NV%(0)=0 ELSE X%=CL:NEXT:ENDPROC

REM If the parsed verb doesn't match V then NEXT action.
IF cont ELSE IF NV%(0)<>V NEXT:PROC990:ENDPROC

REM If auto action then if RND<=N then start processing conditions, else NEXT action.
IF cont ELSE IF NV%(0)<>0 ELSE F%=0:IF RND(100)>N NEXT:PROC990:ENDPROC

REM If non-auto action, and parsed noun doesn't match N, then NEXT action.
IF cont ELSE IF NV%(0)=0 ELSE IF N<>NV%(1) IF N<>0 NEXT:PROC990:ENDPROC



REM *** Process the conditions ***

REM                                         K=condition code, LL="number"
F2%=-1:F%=0:F3%=-1:FORY%=1TO5:WW%=CA%(X%,Y%):LL%=WW% DIV20:K%=WW% MOD20:F1%=-1

IFK%>13EL.IF K%=1PROC430 EL.IFK%=2PROC450 EL.IFK%=3PROC470 EL.IFK%=4PROC490 EL.IFK%=5PROC500 EL.IFK%=6PROC510 EL.IFK%=7PROC520 EL.IFK%=8PROC530 EL.IFK%=9PROC540 EL.IFK%=10PROC410 EL.IFK%=11PROC420 EL.IFK%=12PROC440 EL.IFK%=13PROC460
IFK%<14EL.IFK%=14PROC480 EL.IFK%=15PROC542 EL.IFK%=16PROC543 EL.IFK%=17PROC546 EL.IFK%=18PROC547 EL.IFK%=19PROC544

F2%=F2% AND F1%:IF F2% NEXT ELSE Y%=5:NEXT,:PROC990:ENDPROC



REM *** Process the commands ***

IP%=0:FOR Y%=1TO4:K%=(Y%-1)DIV2+6:IF Y%=1 OR Y%=3 A%=CA%(X%,K%)DIV150 ELSE A%=CA%(X%,K%)MOD150
REMIF A%=0 ELSE IF A%<52 OR A%>101 PROCc:PROCp(MS$(A%+50*(A%>101))):IF W%AND1 ELSE IF W%AND2 ELSE IF POS PRINT
IF A%=0 ELSE IF A%>51 AND A%<102 ELSE PROCc:PROCp(MS$(A%+50*(A%>101))):IF W%AND1 ELSE IF W%AND2 ELSE IF POS PRINT
IFA%>63EL.IFA%=52PROC660 EL.IFA%=53PROC700 EL.IFA%=54PROC740 EL.IFA%=55PROC760 EL.IFA%=56PROC770 EL.IFA%=57PROC780 EL.IFA%=58PROC790 EL.IFA%=59PROC760 EL.IFA%=60PROC810 EL.IFA%=61PROC830 EL.IFA%=62PROC840 EL.IFA%=63PROC850
IFA%<64EL.IFA%>75EL.IFA%=64PROCdRM EL.IFA%=65PROC870 EL.IFA%=66PROC890 EL.IFA%=67PROC920 EL.IFA%=68PROC930 EL.IFA%=69PROC940 EL.IFA%=70PROCcls EL.IFA%=71PROC710 EL.IFA%=72PROC750 EL.IFA%=73PROC955 EL.IFA%=74PROC692 EL.IFA%=75PROC842
IFA%<76EL.IFA%>87EL.IFA%=76PROCdRM EL.IFA%=77PROC942 EL.IFA%=78PROC943 EL.IFA%=79PROC944 EL.IFA%=80PROC742 EL.IFA%=81PROC945 EL.IFA%=82PROC946 EL.IFA%=83PROC947 EL.IFA%=84PROC951 EL.IFA%=85PROC952 EL.IFA%=86PROC953 EL.IFA%=87PROC743
IFA%=88PROC745

REMIF A%=52 OR A%=53 OR A%=62 OR A%=72 OR A%=74 OR A%=75 PROCdRM2

REM Next command - NEXT Y
NEXT

REM Stop processing non-automatic and non-continued actions
IF NV%(0)<>0 AND NOT cont X%=CL

REM Next automatic or continued action - NEXT X
NEXT:PROC990:ENDPROC

REM Finish processing actions. AUTOGET/DROP if necessary.
DEFPROC990
IFNV%(0)=0 OR cont cont=0:ENDPROC
REM        10=GET,        18=DROP
IF NV%(0)<>10 AND NV%(0)<>18 OR F3% ELSE PROC1060
IF NOT F% ELSE IF F4% PRINT Y$:ENDPROC ELSE PRINT"I DON'T UNDERSTAND YOUR COMMAND":ENDPROC
IF NOT F2% PRINT"I CAN'T DO THAT YET"
ENDPROC



REM *** Get param from condition list ***
DEFPROC1050:REP.IP%=IP%+1:WW%=CA%(X%,IP%):P%=WW% DIV20:M=WW% MOD20:U.M=0:ENDPROC



REM *** Automatically GET or DROP ***

REM 10=GET, 18=DROP
DEFPROC1060
IF NV%(1)=0 PRINT"WHAT?":F%=0:ENDPROC
IF NV%(0)<>10 ELSE IF MX<0 ELSE L=0:FORZ%=0TOIL%:L=L-IA%(Z%)=-1:NEXT:IF L>=MX PRINTZ$:F%=0:ENDPROC
K%=0:FOR X%=0TOIL%:$S%=IA$(X%):IF S%?(LEN$S%-1)<>47 NEXT:PROC1200:ENDPROC ELSE LL%=LEN$S%-2:FORY%=LL% TO1 STEP-1:IF S%?Y%<>47 NEXT,:PROC1200:ENDPROC ELSE Z%=Y%:Y%=1:NEXT:Y%=Z%
S%?(LEN$S%-1)=&D
IF$(S%+Y%+1)<>NV$(NV%(1),1)NEXT:PROC1200:ENDPROC ELSE IFNV%(0)=10 ELSE IFIA%(X%)<>-1 K%=1:NEXT:PROC1200:ENDPROC ELSE IA%(X%)=R%:K%=3
IFNV%(0)<>10 ELSE IFIA%(X%)<>R% K%=2:NEXT:PROC1200:ENDPROC ELSE IA%(X%)=-1:K%=3
PRINT"OK. ";:B%=1:X%=IL%:NEXT
F%=0:ENDPROC
DEFPROC1200:IF K%=1 PRINT"I'M NOT CARRYING IT" ELSE IFK%=2 PRINT"I DON'T SEE IT HERE"
IF K%=0 IF NOT F3% PRINT"ITS BEYOND MY POWER TO DO THAT":F%=0
IF K%<>0 F%=0
ENDPROC



REM *** Load game init data ***

DEFPROC1240:INPUT"READY DATA TAPE. HIT ENTER "K$
d=OPENIN("DAT")
INPUT#d,W%
REM objects,actions,words,rooms,mx,start,treasures,wordlen,light,messages,treasury
INPUT#d,IL%,CL,NL,RL,MX,AR,TT,ln,LT,ML,TR
DIMNV%(1),CA%(CL,7),NV$(NL,1),IA$(IL%),IA%(IL%),RS$(RL),RM(RL,5),MS$(ML),NT$(1),I2(IL%)
FORX%=0TOCL:FORY%=0TO7:INPUT#d,CA%(X%,Y%):NEXT,
INPUT#d,I%
FORX%=0TONL:FORY%=0TO1:INPUT#d,NV$(X%,Y%)
NEXT,
FORX%=0TORL:FORY%=0TO5:INPUT#d,RM(X%,Y%):NEXT:INPUT#d,RS$(X%):NEXT
FORX%=0TOML:INPUT#d,MS$(X%):NEXT
FORX%=0TOIL%:INPUT#d,IA$(X%),IA%(X%):I2(X%)=IA%(X%):NEXT:CLOSE#d:ENDPROC



REM *** Condition handlers ***

REM 10. ANY. Is player carrying anything at all?
DEFPROC410:F1%=-1:FORZ%=0TOIL%:IFIA%(Z%)=-1 Z%=IL%:NEXT:ENDPROC ELSENEXT:F1%=0:ENDPROC

REM 11. -ANY. Is player carrying nothing?
DEFPROC420:F1%=0:FORZ%=0TOIL%:IFIA%(Z%)=-1 Z%=IL%:NEXT:ENDPROC ELSENEXT:F1%=-1:ENDPROC

REM 1. HAS. Is player carrying object LL?
DEFPROC430:F1%=IA%(LL%)=-1:ENDPROC

REM 12. -AVL. Is obj LL not being carried by player and not in current room?
DEFPROC440:F1%=IA%(LL%)<>-1 AND IA%(LL%)<>R%:ENDPROC

REM 2. IN/W. Is player in room with object LL?
DEFPROC450:F1%=IA%(LL%)=R%:ENDPROC

REM 13. -RM0. Is obj LL not in the storeroom (room zero)?
DEFPROC460:F1%=IA%(LL%)<>0:ENDPROC

REM 3. AVL. Is player in room with obj LL or carrying it?
DEFPROC470:F1%=IA%(LL%)=R% OR IA%(LL%)=-1:ENDPROC

REM 14. RM0. Is obj LL in storeroom (room zero)?
DEFPROC480:F1%=IA%(LL%)=0:ENDPROC

REM 4. IN. Is player in room LL?
DEFPROC490:F1%=R%=LL%:ENDPROC

REM 5. -IN/W. Is player carrying obj LL, or obj LL isn't in current room?
DEFPROC500:F1%=IA%(LL%)<>R%:ENDPROC

REM 6. -HAVE. Is player not carrying obj LL?
DEFPROC510:F1%=IA%(LL%)<>-1:ENDPROC

REM 7. -IN. Is player not in room LL?
DEFPROC520:F1%=R%<>LL%:ENDPROC

REM 8. BIT. Is numbered flag-bit set?
DEFPROC530:IFLL%=31 F1%=SF% AND &80000000 ELSE F1%=SF% AND 2^LL%
F1%=F1%<>0:ENDPROC

REM 9. -BIT. Is numbered flag-bit clear?
DEFPROC540:IFLL%=31 F1%=SF% AND &80000000 ELSE F1%=SF% AND 2^LL%
F1%=F1%=0:ENDPROC

REM 15. CT<=
DEFPROC542:F1%=CT%<=LL%:ENDPROC

REM 16. CT>
DEFPROC543:F1%=CT%>LL%:ENDPROC

REM 19. CT=
DEFPROC544:F1%=CT%=LL%:ENDPROC

REM 17. ORIG
DEFPROC546:F1%=IA%(LL%)=I2(LL%):ENDPROC

REM 18 -ORIG
DEFPROC547:F1%=IA%(LL%)<>I2(LL%):ENDPROC



REM *** Command handlers ***

REM Movement
DEFPROC610:L=(SF% AND 2^15)>0:IFL L=L AND IA%(9)<>R% AND IA%(9)<>-1:IF L PRINT"DANGEROUS TO MOVE IN THE DARK!"
IFNV%(1)<1PRINT"GIVE ME A DIRECTION TOO.":ENDPROC
K%=RM(R%,NV%(1)-1):IFK%>=1 ELSE IFL PRINT"I FELL DOWN AND BROKE MY NECK.":K%=RL:SF%=SF% AND NOT (2^15) ELSE PRINT"I CAN'T GO IN THAT DIRECTION":ENDPROC
IF NOT L PROCcls
R%=K%:B%=1:ENDPROC

REM 52. GETx
DEFPROC660:L=0:FORZ%=0TOIL%:L=L-IA%(Z%)=-1
NEXT
REMIF MX>=0 IF L>=MX PRINT Z$:Y%=4:ENDPROC ELSE PROC1050:IA%(P%)=-1:PROCdRM2:ENDPROC
IF MX>=0 IF L>=MX PRINT Z$:Y%=4:ENDPROC ELSE PROC1050:Z%=IA%(P%):IA%(P%)=-1:IF Z%=R% B%=1:ENDPROC ELSE ENDPROC

REM 74. AGETx
DEFPROC692:PROC1050:Z%=IA%(P%):IA%(P%)=-1:IF Z%=R% B%=1:ENDPROC ELSE ENDPROC

REM 53. DROPx
DEFPROC700:PROC1050:IA%(P%)=R%:B%=1:ENDPROC

REM 71. SAVE
DEFPROC710:PRINT"SAVING GAME":INPUT"READY OUTPUT TAPE "K$
d=OPENOUT("SAV"):PRINT#d,SF%,R%,CT%:FORWW%=0TOIL%:PRINT#d,IA%(WW%):NEXT:FORWW%=0TO8:PRINT#d,CT%(WW%):NEXT:FORX%=0TO5:BPUT#d,arr%?X%:NEXT:CLOSE#d
ENDPROC

REM 54. GOTOy
DEFPROC740:PROC1050:R%=P%:B%=1:ENDPROC

REM 80. EXRM0
DEFPROC742:Z%=R%:R%=?arr%:?arr%=Z%:ENDPROC

REM 87. EXC,CR
DEFPROC743:PROC1050:Z%=R%:R%=arr%?P%:arr%?P%=Z%:ENDPROC

REM 88. DELAY
DEFPROC745:IF B% PROCdRM2:B%=0
TIME=0:REP.U.TIME>200:ENDPROC

REM 72. EXx,x (Exchange the room locations of the Par #1 object and the Par #2 object)
DEFPROC750:PROC1050:L=P%:PROC1050:Z%=IA%(P%):IA%(P%)=IA%(L):IA%(L)=Z%:IF IA%(P%)<>R% AND Z%<>R% ENDPROC ELSE IF IA%(P%)=Z% ENDPROC ELSE B%=1:ENDPROC

REM 55/59. x->RM0
DEFPROC760:PROC1050:IA%(P%)=0:ENDPROC

REM 56. NIGHT
DEFPROC770:SF%=SF% OR 2^15:ENDPROC

REM 57. DAY
DEFPROC780:SF%=SF% AND NOT (2^15):ENDPROC

REM 58. SETz
DEFPROC790:PROC1050
DEFPROC790a:*
IFP%=31 SF%=SF% OR &80000000:ENDPROC ELSE SF%=SF% OR 2^P%:ENDPROC

REM 60. CLRz
DEFPROC810:PROC1050
DEFPROC810a:*
IFP%=31 SF%=SF% AND &7FFFFFFF:ENDPROC ELSE SF%=SF% AND NOT (2^P%):ENDPROC

REM 61. DEAD
DEFPROC830:PRINT"I'M DEAD...":R%=RL:SF%=SF% AND NOT (2^15):PROCdRM2:B%=0:ENDPROC

REM 62. x->y (Move the Par #1 object to the Par #2 room)
REMDEFPROC840:PROC1050:L=P%:PROC1050:IA%(L)=P%:ENDPROC
DEFPROC840:PROC1050:L=P%:Z%=IA%(L):PROC1050:IA%(L)=P%:IF P%<>R% AND Z%<>R% ENDPROC ELSE IF P%=Z% ENDPROC ELSE B%=1:ENDPROC

REM 75. BYx->x (Put Par #1 object in same room as Par #2 object)
DEFPROC842:PROC1050:L=P%:PROC1050:Z%=IA%(L):IA%(L)=IA%(P%):IFIA%(L)=R% ORZ%=R% IFZ%<>IA%(L) B%=1:ENDPROC EL.ENDPROC

REM 63. FINI
DEFPROC850:PROCn:PROCb:INPUT"THE GAME IS NOW OVER"'"ANOTHER GAME? "K$:IFLEFT$(K$,1)="N"END ELSE RUN

REM 64. DspRM
DEFPROCdRM:PROCdRM2:B%=0:ENDPROC

REM 65. SCORE
DEFPROC870:L=0:FORZ%=0TOIL%:IFIA%(Z%)=TR IFLEFT$(IA$(Z%),1)="*" L=L+1
NEXT:PRINT"I'VE STORED ";L;" TREASURES."'"ON A SCALE OF 0 TO 100 THAT RATES A ";L DIV TT*100:IFL=TT PRINT"WELL DONE.":PROC850 EL.ENDPROC

REM 66. INV
DEFPROC890:PRINT"I'M CARRYING:":WW%=TRUE:FORZ%=0TOIL%:IFIA%(Z%)=-1 WW%=FALSE:PROC280:PROCo(TP$+". ")
NEXT:IF WW% PRINT"Nothing"
IFPOS PRINT':ENDPROC ELSEPRINT:ENDPROC

REM 67. SET0 (Sets the flag-bit numbered 0)
DEFPROC920:P%=0:PROC790a:ENDPROC

REM 68. CLR0 (Clears the flag-bit numbered 0)
DEFPROC930:P%=0:PROC810a:ENDPROC

REM 69. FILL (Re-fill the artificial light source (obj 9) and pick it up)
DEFPROC940:SF%=SF% AND NOT (2^16):CT%(8)=LT:IA%(9)=-1:ENDPROC

REM 77. CT-1
DEFPROC942:CT%=CT%-1:ENDPROC

REM 78. DSPCT
DEFPROC943:PROCc:PRINT;CT%;:IF (W%AND2)=0 PRINT" ";:ENDPROC ELSE ENDPROC

REM 79. CT<-N
DEFPROC944:PROC1050:CT%=P%:ENDPROC

REM 81. EXM,CT
DEFPROC945:PROC1050:Z%=CT%(P%):CT%(P%)=CT%:CT%=Z%:ENDPROC

REM 82. CT+N
DEFPROC946:PROC1050:CT%=CT%+P%:ENDPROC

REM 83. CT-N
DEFPROC947:PROC1050:CT%=CT%-P%:ENDPROC

REM 70. CLS
REMDEFPROCcls:CLS:PRINT:ENDPROC
REMDEFPROCcls:P."!CLS!":ENDPROC
DEFPROCcls:ENDPROC

REM 84. SAYW
DEFPROC951:PRINT NT$(1);:ENDPROC

REM 85. SAYWCR
DEFPROC952:PRINT NT$(1):ENDPROC

REM 86. SAYCR
DEFPROC953:PRINT:ENDPROC

REM 73. CONT
DEFPROC955:cont=-1:ENDPROC



REM *** Word-wrap, etc. ***

DEFPROCo($S%):LOCALA%,Z%,C%,N%:N%=LEN$S%:A%=0:Z%=41-POS:REPEATIFZ%>N%Z%=N%ELSEREPEATZ%=Z%-1:C%=S%?Z%:UNTILC%=32:IF Z%>=A% ELSE IF POS PRINT:Z%=41:UNTIL0 ELSE STOP
S%?Z%=&D:PRINT$(S%+A%);:IFZ%<N% IF POS PRINT
A%=Z%+1:Z%=A%+41:UNTILA%>=N%:ENDPROC

REM Is the previous line blank?
REMDEFFNb:LOCALA%,C%,I%:VDU11,8:A%=&87:FORI%=1TOL%:VDU9:C%=(USR(&FFF4)AND&FF00)DIV256:IFC%=32NEXT:VDU10,13:=TRUE ELSEI%=L%:NEXT:VDU10,13:=FALSE
DEFFNb:LOCAL A%,B%,I%:VDU 11:A%=?&34B*256+?&34A:VDU 10:FOR I%=0 TO 39 STEP 4
B%=A%+I%:B%=B%+&400*(B%>&7FFF)
REMIF !B%<>&20202020 I%=L%-1:NEXT:=FALSE ELSE NEXT:=TRUE
IF !B%=&20202020 NEXT:=TRUE ELSE I%=39:NEXT:=FALSE

REM If at start of line (but not at 0,0) then print a blank line if prev line isn't blank
DEFPROCb:IFPOS ENDPROC ELSE IF VPOS=0 ENDPROC ELSE IF FNb ENDPROC ELSE PRINT:ENDPROC

REM If using machine-code newlines, just print the string; else call PROCo
DEFPROCp($S%):IF W% AND 1 PRINT $S%:ENDPROC ELSE PROCo($S%):ENDPROC

REM If string-concat is on and cursor isn't at start/end of line then print space
DEFPROCc:PRINT CHR$((POS>0)*(POS<39)*((W%AND2)>0)*-32);:ENDPROC

REM If cursor isn't at start of line then print a newline
REMDEFPROCn:VDU-10*(POS>0),-13*(POS>0):ENDPROC
DEFPROCn:IF POS PRINT STRING$(40-POS,CHR$32);:ENDPROC ELSE ENDPROC
