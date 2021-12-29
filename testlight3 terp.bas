NEW
10 REM COPYRIGHT SCOTT ADAMS. 1978

15 REM converted to BBC BASIC in 2020

REM L% = screen width in chars
20 MODE7:VDU23,0,10,8;0;0;0;23,0,11,12;0;0;0;:PRINT:D=-1:DIM S% 255:L%=40:*FX11,0

REM X=Y=Z:K=R=V:N=LL=F:TP$=K$:W=IP=P:
REM 40 K=0:Z$="I'VE TOO MUCH TOO CARRY. TRY -TAKE INVENTORY-":GOSUB1240:GOTO100

40 cont=0:K=0:Z$="I'VE TOO MUCH TOO CARRY. TRY -TAKE INVENTORY-":GOSUB1240:GOTO100

50 CLS:PRINT'"*** WELCOME TO ADVENTURE LAND.(#4.6) ***":PRINT:PRINT" UNLESS TOLD DIFFERENTLY YOU MUST FIND"'"*TREASURES* AND RETURN THEM TO THEIR"'"PROPER PLACE!"
60 PRINT:PRINT"I'M YOUR PUPPET. GIVE ME ENGLISH"'"COMMANDS THAT ";
70 PRINT"CONSIST OF A NOUN AND"'"VERB. SOME EXAMPLES...":PRINT:PRINT"TO FIND OUT WHAT YOU'RE CARRYING YOU"'"MIGHT SAY: TAKE INVENTORY"'"TO GO INTO A HOLE YOU MIGHT SAY: GO HOLE";"TO SAVE CURRENT GAME: SAVE GAME"
80 PRINT:PRINT"YOU WILL AT TIMES NEED SPECIAL ITEMS TO DO THINGS, BUT I'M SURE YOU'LL BE A GOOD";"ADVENTURER AND FIGURE THESE THINGS OUT."
90 PRINT:INPUT"HAPPY ADVENTURING... HIT ENTER TO START"K$:PROCcls:RETURN

REM100 R=AR:LX=LT:DF=0:SF=0:INPUT"USE OLD 'SAVED' GAME? "K$:IFLEFT$(K$,1)<>"Y"THEN130
100 R=AR:LX=LT:SF=SF AND NOT (2^15):SF=0:INPUT"USE OLD 'SAVED' GAME? "K$:IFLEFT$(K$,1)<>"Y"THEN130
110 IFD<>-1THENCLOSE:OPEN"I",D,SV$ELSEINPUT"READY SAVED TAPE "K$:PRINT;INT(IL*5/60)+1;" MINUTES"
REM120 d=OPENIN("SAV"):INPUT#d,SF,LX,DF,R:FORX=0TOIL:INPUT#d,IA(X):NEXT:CLOSE#d:IFD<>-1CLOSE
120 d=OPENIN("SAV"):INPUT#d,SF,LX,R:FORX=0TOIL:INPUT#d,IA(X):NEXT:CLOSE#d:IFD<>-1CLOSE
130 GOSUB50:GOSUB240:GOTO160

140 PROCb:INPUT"TELL ME WHAT TO DO? "TP$:PRINT:GOSUB170:IF F PRINT"YOU USE WORD(S) I DON'T KNOW":GOTO140
REM150 GOSUB360:IFIA(9)<>-1 ELSE LX=LX-1:IFLX<0THENPRINT"LIGHT HAS RUN OUT":IA(9)=0ELSEIFLX<25PRINT"LIGHT RUNS OUT IN";LX;"TURNS!"
REM150 GOSUB360:IF LT<0 ELSE IFIA(9)=0 ELSE LX=LX-1:IFLX<0THEN SF=SF OR 2^16:PRINT"LIGHT HAS RUN OUT"ELSEIFLX IFLX<25PRINT"LIGHT RUNS OUT IN ";LX;" TURN"CHR$(ASC("S")*-(LX>1))"!"
150 GOSUB360:IF LT<0 ELSE IFIA(9)=0 ELSE LX=LX-1:IFLX=0THEN SF=SF OR 2^16:PRINT"LIGHT HAS RUN OUT"ELSEIFLX IFLX<25PRINT"LIGHT RUNS OUT IN ";LX;" TURN"CHR$(ASC("S")*-(LX>1))"!"
160 NV(0)=0:GOSUB360:GOTO140


REM *** Parse input ***

REM Split input into verb NT$(0) and noun NT$(1)
170 K=0:NT$(0)="":NT$(1)=""
180 FORX=1TOLEN(TP$):K$=MID$(TP$,X,1):IFK$=" "THEN K=1 ELSE NT$(K)=LEFT$(NT$(K)+K$,ln)
190 NEXTX
REM Assign verb to NV(0) and noun to NV(1)
195 FORX=0TO1:NV(X)=0:IFNT$(X)=""THEN230 ELSE FORY=0TONL:K$=NV$(Y,X):IFLEFT$(K$,1)="*"THENK$=MID$(K$,2)
REM "Directional nouns" need truncating
200 IFX=1 IFY<7 THEN K$=LEFT$(K$,ln)
210 IF NT$(X)=K$ THEN NV(X)=Y:y=Y:Y=NL:NEXTY:Y=y ELSE NEXTY:GOTO230
REM Change any synonym to the base-word that it's a synonym of
220 IFLEFT$(NV$(NV(X),X),1)="*"THENNV(X)=NV(X)-1:GOTO220
230 NEXTX:F=NV(0)<1ORLEN(NT$(1))>0ANDNV(1)<1:RETURN

REM240 IF DF IF IA(9)<>-1 AND IA(9)<>R PRINT"I CAN'T SEE, ITS TOO DARK.":RETURN
240 IF SF AND 2^15 IF IA(9)<>-1 AND IA(9)<>R PRINT"I CAN'T SEE, ITS TOO DARK.":RETURN
250 K=-1:IFLEFT$(RS$(R),1)="*"THENPROCp(MID$(RS$(R),2)+".")ELSEPROCp("I'M IN A "+RS$(R)+".")
260 FORZ=0TOIL:IF K IF IA(Z)=R PRINT'"VISIBLE ITEMS HERE:":K=0
270 GOTO300

280 TP$=IA$(Z):IFRIGHT$(TP$,1)<>"/"THEN ELSE FOR W=LEN(TP$)-1TO1 STEP-1:IFMID$(TP$,W,1)="/"TP$=LEFT$(TP$,W-1):w=W:W=1:NEXTW:W=w:ELSE NEXT W
290 RETURN

300 IF IA(Z)<>R THEN320 ELSE GOSUB280
310 PROCp(CHR$(32*-(POS>0))+TP$+"."):PROCj
320 NEXT:IFPOS PRINT' ELSEPRINT
330 K=-1:FORZ=0TO5:IF K IFRM(R,Z)<>0PRINT"OBVIOUS EXITS: ";:K=0
340 IFRM(R,Z)<>0PRINTNV$(Z+1,1);" ";
350 NEXT:IFPOS PRINT:RETURN ELSE RETURN


REM *** Search for matching actions ***

REM Find a matching action

REM set up the success/failure flags
360 F2=-1:F=-1:F3=0

REM If GO {NSEWUD}
362 IFNV(0)=1 AND NV(1)<7 THEN 610

REM Divide action data value by 150 to get verb-code V. If V=0 then this is an automatic action.
REM All automatic actions must precede all non-automatic actions.
REM365 FORX=0TOCL:V=INT(CA(X,0)/150):IF NV(0)=0 IFV<>0 x=X:X=CL:NEXTX:X=x:RETURN
365 FORX=0TOCL:V=INT(CA(X,0)/150):N=CA(X,0)-V*150

REM If continue-flag set: if either V or N non-zero then return, else process conditions. 
366 IF NOT cont ELSE IF V OR N cont=0:x=X:X=CL:NEXTX:X=x:RETURN ELSE G.400

REM If non-auto action is hit when processing auto actions then return.
367 IF NV(0)=0 IFV<>0 x=X:X=CL:NEXTX:X=x:RETURN

REM If the parsed verb doesn't match V then NEXT action, else get this action's noun-code N.
REM370 IF NV(0)<>V THEN NEXTX:GOTO990 ELSE N=CA(X,0)-V*150
370 IF NV(0)<>V THEN NEXTX:GOTO990

REM If auto action then if RND < N then start processing conditions, else NEXT action.
380 IF NV(0)<>0 ELSE F=0:IF RND(100)<=N THEN G.400 ELSE NEXTX:GOTO990

REM If non-auto action, and parsed noun doesn't match N, then NEXT action.
390 IF N<>NV(1) AND N<>0 THEN NEXTX:GOTO990


REM *** Process the conditions ***

REM                                         K=condition code, LL="number"
400 F2=-1:F=0:F3=-1:FORY=1TO5:W=CA(X,Y):LL=INT(W/20):K=W-LL*20:F1=-1:ON K+1 GOTO550,430,450,470,490,500,510,520,530,540,410,420,440,460,480

REM 10. Is player carrying anything at all?
410 F1=-1:FORZ=0TOIL:IFIA(Z)=-1 THEN z=Z:Z=IL:NEXTZ:Z=z:GOTO550 ELSENEXTZ:F1=0:GOTO550

REM 11. Is player carrying nothing?
420 F1=0:FORZ=0TOIL:IFIA(Z)=-1 THEN z=Z:Z=IL:NEXTZ:Z=z:GOTO550 ELSENEXTZ:F1=-1:GOTO550

REM 1. Is player carrying object LL?
430 F1=IA(LL)=-1:GOTO550

REM 12. Is obj LL not being carried by player and not in current room?
440 F1=IA(LL)<>-1 AND IA(LL)<>R:GOTO550

REM 2. Is player in room with object LL?
450 F1=IA(LL)=R:GOTO550

REM 13. Is obj LL not in the storeroom (room zero)?
460 F1=IA(LL)<>0:GOTO550

REM 3. Is player in room with obj LL or carrying it?
470 F1=IA(LL)=R OR IA(LL)=-1:GOTO550

REM 14. Is obj LL in storeroom (room zero)?
480 F1=IA(LL)=0:GOTO550

REM 4. Is player in room LL?
490 F1=R=LL:GOTO550

REM 5. Is player carrying obj LL, or obj LL isn't in current room?
500 F1=IA(LL)<>R:GOTO550

REM 6. Is player not carrying obj LL?
510 F1=IA(LL)<>-1:GOTO550

REM 7. Is player not in room LL?
520 F1=R<>LL:GOTO550

REM 8. Is numbered flag-bit set?
530 F1=SF AND INT(2^LL+.5):F1=F1<>0:GOTO550

REM 9. Is numbered flag-bit clear?
540 F1=SF AND INT(2^LL+.5):F1=F1=0:GOTO550

550 F2=F2 AND F1:IF F2 THEN NEXTY ELSE y=Y:Y=5:NEXTY:Y=y:NEXTX:GOTO990


REM *** Process the commands ***

560 IP=0:FORY=1TO4:K=INT((Y-1)/2)+6:ON Y GOTO570,580,570,580
570 AC=INT(CA(X,K)/150):GOTO590
580 AC=CA(X,K)-INT(CA(X,K)/150)*150
REM590 IF AC>101 THEN600 ELSE IFAC=0 THEN960 ELSE IFAC<52 THEN PROCp(MS$(AC)):GOTO960:ELSE ON AC-51 GOTO660,700,740,760,770,780,790,760,810,830,840,850,860,870,890,920,930,940,950,710,750
590 IF AC>101 THEN600 ELSE IFAC=0 THEN960 ELSE IFAC<52 THEN PROCp(MS$(AC)):GOTO960:ELSE ON AC-51 GOTO660,700,740,760,770,780,790,760,810,830,840,850,860,870,890,920,930,940,950,710,750,955
600 PROCp(MS$(AC-50)):GOTO960

REM610 L=DF:IFL THEN L=DF AND IA(9)<>R AND IA(9)<>-1:IF L PRINT"DANGEROUS TO MOVE IN THE DARK!"
610 L=SF AND 2^15 > 0:IFL THEN L=L AND IA(9)<>R AND IA(9)<>-1:IF L PRINT"DANGEROUS TO MOVE IN THE DARK!"
620 IFNV(1)<1PRINT"GIVE ME A DIRECTION TOO.":GOTO1040
REM630 K=RM(R,NV(1)-1):IFK>=1 ELSE IFL THENPRINT"I FELL DOWN AND BROKE MY NECK.":K=RL:DF=0:ELSE PRINT"I CAN'T GO IN THAT DIRECTION":GOTO1040
630 K=RM(R,NV(1)-1):IFK>=1 ELSE IFL THENPRINT"I FELL DOWN AND BROKE MY NECK.":K=RL:SF=SF AND NOT (2^15):ELSE PRINT"I CAN'T GO IN THAT DIRECTION":GOTO1040
640 IF NOT L PROCcls
650 R=K:GOSUB240:GOTO1040

REM 52. GETx
REM660 L=0:FORZ=1TOIL:IFIA(Z)=-1LETL=L+1
660 L=0:FORZ=0TOIL:IFIA(Z)=-1LETL=L+1
670 NEXTZ
REM680 IF L>=MX PRINT Z$:GOTO970
680 IF MX>=0 IF L>=MX PRINT Z$:GOTO970
690 GOSUB1050:IA(P)=-1:GOTO960

REM 53. DROPx
700 GOSUB1050:IA(P)=R:GOTO960

REM 71. SAVE
710 PRINT"SAVING GAME":IFD=-1 INPUT"READY OUTPUT TAPE "K$:PRINT;INT(IL*5/60)+1;" MINUTES"ELSE OPEN"O",D,SV$
REM720 d=OPENOUT("SAV"):PRINT#d,SF,LX,DF,R:FORW=0TOIL:PRINT#d,IA(W):NEXT:CLOSE#d:IFD<>-1CLOSE
720 d=OPENOUT("SAV"):PRINT#d,SF,LX,R:FORW=0TOIL:PRINT#d,IA(W):NEXT:CLOSE#d:IFD<>-1CLOSE
730 GOTO960

REM 54. GOTOy
740 GOSUB1050:R=P:GOTO960

REM 72. EXx,x (Exchange the room locations of the Par #1 object and the Par #2 object)
750 GOSUB1050:L=P:GOSUB1050:Z=IA(P):IA(P)=IA(L):IA(L)=Z:GOTO960

REM 55/59. x->RM0
760 GOSUB1050:IA(P)=0:GOTO960

REM 56. NIGHT
REM770 DF=-1:GOTO960
770 SF=SF OR 2^15:GOTO960

REM 57. DAY
REM780 DF=0:GOTO960
780 SF=SF AND NOT (2^15):GOTO960

REM 58. SETz
790 GOSUB1050
800 SF=SF OR INT(.5+2^P):GOTO960

REM 60. CLRz
810 GOSUB1050

820 SF=SF AND NOT INT(.5+2^P):GOTO960

REM 61. DEAD
REM830 PRINT"I'M DEAD...":R=RL:DF=0:GOTO860
830 PRINT"I'M DEAD...":R=RL:SF=SF AND NOT (2^15):GOTO860

REM 62. x->y (Move the Par #1 object to the Par #2 room)
840 GOSUB1050:L=P:GOSUB1050:IA(L)=P:GOTO960

REM 63. FINI
850 INPUT"THE GAME IS NOW OVER"'"ANOTHER GAME? "K$:IFLEFT$(K$,1)="N"THENEND ELSE FORX=0TOIL:IA(X)=I2(X):NEXT:GOTO100

REM 64. DspRM
860 GOSUB240:GOTO960

REM 65. SCORE
REM870 L=0:FORZ=1TOIL:IFIA(Z)=TR IFLEFT$(IA$(Z),1)="*"LET L=L+1
870 L=0:FORZ=0TOIL:IFIA(Z)=TR IFLEFT$(IA$(Z),1)="*"LET L=L+1
880 NEXTZ:PRINT"I'VE STORED ";L;" TREASURES."'"ON A SCALE OF 0 TO 100 THAT RATES A ";INT(L/TT*100):IFL=TT THENPRINT"WELL DONE.":GOTO850 ELSE960

REM 66. INV
890 PRINT"I'M CARRYING:":K$="NOTHING":FORZ=0TOIL:IFIA(Z)<>-1THEN910 ELSEGOSUB280
900 PROCp(CHR$(32*-(POS>0))+TP$+"."):PROCj:K$=""
910 NEXT:PRINTK$:IFPOS PRINT':GOTO960 ELSEPRINT:GOTO960

REM 67. SET0 (Sets the flag-bit numbered 0)
920 P=0:GOTO800

REM 68. CLR0 (Clears the flag-bit numbered 0)
930 P=0:GOTO820

REM 69. FILL (Re-fill the artificial light source (obj 9) and pick it up)
REM940 LX=LT:IA(9)=-1:GOTO960
940 SF=SF AND NOT 2^16:LX=LT:IA(9)=-1:GOTO960

REM 70. CLS
950 PROCcls:GOTO960

REM 73. CONT
955 cont=-1:GOTO960

REM Next command
960 NEXTY

REM Stop processing non-automatic and non-continued actions
REM970 IF NV(0)<>0 THEN x=X:X=CL:NEXTX:X=x:GOTO990
970 IF NV(0)<>0 AND NOT cont THEN x=X:X=CL:NEXTX:X=x:GOTO990

REM Next automatic or continued action
980 NEXTX
990 :
REM1000 IFNV(0)=0THEN1040
1000 IFNV(0)=0 OR cont THEN1040
1010 GOSUB1060
1020 IF F PRINT"I DON'T UNDERSTAND YOUR COMMAND":GOTO1040
1030 IF NOT F2 PRINT"I CAN'T DO THAT YET":GOTO1040

REM Return from action-matching routine
REM1040 RETURN
1040 cont=0:RETURN

REM Get param from condition list
1050 IP=IP+1:W=CA(X,IP):P=INT(W/20):M=W-P*20:IF M<>0 THEN1050 ELSE RETURN


REM *** Automatically GET or DROP ***

REM 10=GET, 18=DROP
1060 IF NV(0)<>10 AND NV(0)<>18 OR F3 THEN 1230
1070 IF NV(1)=0 PRINT"WHAT?":GOTO1180
1080 IF NV(0)<>10 THEN 1110
1090 L=0:FORZ=0TOIL:IFIA(Z)=-1THENL=L+1
REM1100 NEXT:IF L>=MX PRINTZ$:GOTO1180
1100 NEXT:IF MX>=0 IF L>=MX PRINTZ$:GOTO1180
1110 K=0:FOR X=0TOIL:IF RIGHT$(IA$(X),1)<>"/"THEN1190 ELSE LL=LEN(IA$(X))-1:TP$=MID$(IA$(X),1,LL):FORY=LL TO2 STEP-1:IFMID$(TP$,Y,1)<>"/"THEN NEXTY:GOTO1190 ELSE y=Y:Y=2:NEXTY:Y=y
1120 TP$=LEFT$(MID$(TP$,Y+1),ln)
1130 IFTP$<>NV$(NV(1),1)THEN1190
1140 IFNV(0)=10THEN1160
1150 IFIA(X)<>-1THENK=1:GOTO1190 ELSE IA(X)=R:K=3:GOTO1170
1160 IFIA(X)<>R THEN K=2:GOTO1190 ELSE IA(X)=-1:K=3
1170 PRINT"OK, ";:x=X:X=IL:NEXTX:X=x
1180 F=0:RETURN
1190 NEXTX
1200 IF K=1 THEN PRINT"I'M NOT CARRYING IT" ELSE IFK=2 PRINT"I DON'T SEE IT HERE"
1210 IF K=0 IF NOT F3 PRINT"ITS BEYOND MY POWER TO DO THAT":F=0
1220 IF K<>0 THEN F=0
1230 RETURN


REM *** Load game init data ***

1240 IFD<>-1THEN1330 ELSEINPUT"READY DATA TAPE. HIT ENTER "K$
1245 d=OPENIN("DAT")
1250 INPUT#d,IL,CL,NL,RL,MX,AR,TT,ln,LT,ML,TR
REM 1260 W=INT((IL+INT(CL/2)+INT(NL/10)+RL+ML)/12):REM PRINTW+1;"MINUTES TO LOAD."
1270 DIMNV(1),CA(CL,7),NV$(NL,1),IA$(IL),IA(IL),RS$(RL),RM(RL,5),MS$(ML),NT$(1),I2(IL)
1280 FORX=0TOCL:INPUT#d,CA(X,0),CA(X,1),CA(X,2),CA(X,3),CA(X,4),CA(X,5),CA(X,6),CA(X,7):NEXT
1290 FORX=0TONL:FORY=0TO1:INPUT#d,NV$(X,Y)
1297 NEXTY,X
1300 FORX=0TORL:INPUT#d,RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X):NEXT
1310 FORX=0TOML:INPUT#d,MS$(X):NEXT
1320 FORX=0TOIL:INPUT#d,IA$(X),IA(X):I2(X)=IA(X):NEXT:CLOSE#d:RETURN
1330 REM

2000 DEFPROCcls:CLS:PRINT:ENDPROC


REM *** Word-wrap, etc. ***

2060 DEFPROCp($S%):LOCALA%,Z%,C%,N%,T%:N%=LEN$S%:A%=0:Z%=L%+1-POS:REPEATIFZ%>N%Z%=N%ELSEREPEATZ%=Z%-1:C%=S%?Z%:UNTILC%=32:IFZ%<A%Z%=A%+L%
2070 T%=S%?Z%:S%?Z%=13:PRINT$(S%+A%);:S%?Z%=T%:VDU32,-8*(POS=1):IFZ%-A%<=L%ANDPOS PRINTELSEIFC%=32A%=A%+1ELSEZ%=Z%-1
2080 A%=Z%+1:Z%=A%+L%+1:UNTILA%>=N%:IFPOS PRINT:ENDPROC ELSEENDPROC

REM Backtrack to previous non-space char 
2090 DEFPROCj:LOCALA%,C%:A%=&87:REPEATVDU8:C%=(USR(&FFF4)AND&FF00)DIV256:UNTILC%<>32:VDU9:ENDPROC

REM Is the previous line blank?
2100 DEFFNb:LOCALA%,C%,I%:VDU11,8:A%=&87:FORI%=1TOL%:VDU9:C%=(USR(&FFF4)AND&FF00)DIV256:IFC%=32NEXT:VDU10,13:=TRUE ELSEI%=L%:NEXT:VDU10,13:=FALSE
REM If at start of line, then print a blank line if prev line isn't blank.
2120 DEFPROCb:IFPOS ENDPROC ELSE IFNOT(FNb)PRINT:ENDPROC ELSEENDPROC
