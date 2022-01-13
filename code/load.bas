10MODE7:VDU23,0,10,8;0;0;0;23,0,11,12;0;0;0;
20PRINT'"*** WELCOME TO ADVENTURE LAND.(#8.x) ***":PRINT" Unless told differently you must find"'"*treasures* and-return-them-to-their-"'"proper-place!"
30PRINT:PRINT"I'm your puppet. Give me English"'"commands that ";
40PRINT"consist of a noun and"'"verb. Some examples...":PRINT:PRINT"To find out what you're carrying you"'"might say: TAKE INVENTORY"''"To move: N, S, E, W, U, D"'"To go into a hole you might say: GO HOLE";
50PRINT"To save the current game: SAVE GAME"
60PRINT:PRINT"You will at times need special items to do things, but i'm sure you'll be a good";"adventurer and figure these things out."
70PRINT:INPUT"HAPPY ADVENTURING... HIT ENTER TO START"
80*FX21,0
90IFGETCLS:IFRND(-TIME)
100D=OPENIN("DAT"):INPUT#D,W%:CLOSE#D
110IF (W% AND 1) PROCnewline
120IFPAGE>&1300 THEN PAGE=&1300:CHAIN "TERP" ELSE CHAIN "TERP"
130END
140DEFPROCnewline
150code%=&A00
160WRCHV=&20E
170FOR opt%=0 TO 2 STEP2
180P%=code%
190[OPT opt%
200.init LDA WRCHV \ A=lo byte of vector
210 STA ret_vec \ make a copy
220 LDA WRCHV+1 \ A=hi byte of vector
230 STA ret_vec+1 \ make a copy
240 LDX #intrcpt AND &FF \ X=lo byte of new routine
250 LDY #intrcpt DIV &100 \ Y=hi byte of new routine
260 SEI \ disable interrupts
270 STX WRCHV \ store new routine address
280 STY WRCHV+1 \ in WRCH Vector
290 CLI \ enable interrupts
300 RTS \ finished initialisation
310.intrcpt CMP #ASC"|" \ trying to print a | ?
320 BEQ pound \ if so branch
330 JMP (ret_vec) \ else goto old routine
340.pound
350 LDA #10:JSR &FFE3:LDA #13 \ replace | with \n
360 JMP (ret_vec) \ goto old routine
370.ret_vec EQUW 0 \ space for return vector
380]
390NEXT
400CALL init
410ENDPROC

