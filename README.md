# BeebScott

** **THIS IS A WORK IN PROGRESS** **

BeebScott is an interpreter for playing Scott Adams text adventure games on a BBC Micro computer or emulator. BeebScott is written in 8-bit BBC BASIC.

***conv.pl*** is a Perl script that reads Scott Adams game files in either TRS-80 .DAT format or compiled ScottKit .sao format and then converts them to BeebScott format. (Strictly speaking, the Perl script outputs a BBC BASIC program as plain text. That BBC BASIC program, when run on a BBC Micro computer (with 65(C)02 co-processor), will write the game data to a BBC Micro filesystem.)

***terp.bas*** is the BBC BASIC interpreter program, BeebScott. It reads in the game data file and lets the user play the game on a BBC Micro computer or emulator.

For now, you can [run some test cases](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd).
