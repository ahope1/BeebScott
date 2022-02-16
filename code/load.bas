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
110IF (W% AND 1) THEN *RUN NEWL
120IFPAGE>&1300 THEN PAGE=&1300:CHAIN "TERP" ELSE CHAIN "TERP"
130END
