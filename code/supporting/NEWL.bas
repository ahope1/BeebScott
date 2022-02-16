NEW
AUTO

MODE7
code%=&A00
ass%=&4000
WRCHV=&20E
FOR opt%=4 TO 7 STEP3
P%=code%:O%=ass%
[OPT opt%
.init LDA WRCHV \ A=lo byte of vector
 STA ret_vec \ make a copy
 LDA WRCHV+1 \ A=hi byte of vector
 STA ret_vec+1 \ make a copy
 LDX #intrcpt AND &FF \ X=lo byte of new routine
 LDY #intrcpt DIV &100 \ Y=hi byte of new routine
 SEI \ disable interrupts
 STX WRCHV \ store new routine address
 STY WRCHV+1 \ in WRCH Vector
 CLI \ enable interrupts
 RTS \ finished initialisation
.intrcpt CMP #ASC"|" \ trying to print a | ?
 BEQ pound \ if so branch
 JMP (ret_vec) \ else goto old routine
.pound
 LDA #10:JSR &FFE3:LDA #13 \ replace | with \n
 JMP (ret_vec) \ goto old routine
.ret_vec EQUW 0 \ space for return vector
]
NEXT
REM CALL init
REM *SAVE NEWL 4000 402C FFFF0A00 FFFF0A00
