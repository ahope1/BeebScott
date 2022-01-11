## Code

[***conv.pl***](https://github.com/ahope1/BeebScott/tree/main/code/conv.pl) is a Perl script that reads Scott Adams game files (in either TRS-80 .DAT format or compiled ScottKit .sao format) and then converts them to BeebScott format. Strictly speaking, what the Perl script outputs is a BBC BASIC program in plain text. That BBC BASIC program, when run on a BBC Micro computer (with 65(C)02 co-processor), will convert the game data to BeebScott format and write the converted data to a BBC Micro filesystem.

[***terp.bas***](https://github.com/ahope1/BeebScott/tree/main/code/terp.bas) is the Scott Adams game interpreter program, written in BBC BASIC. It reads in a game data file (which has been converted to BeebScott format by *conv.pl*)  and lets the user play the game on a BBC Micro computer or emulator.

You can [run some tests](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd) in BeebScott.
