# BeebScott

BeebScott is an interpreter for playing Scott Adams text adventure games on a BBC Micro computer (or emulator). BeebScott is written in 8-bit BBC BASIC.


## Games

Some games in Scott Adams format have been converted for use with BeebScott. Play them in your web browser:

[Secret Mission](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/ScottAdams/03%20Secret%20Mission/adv03-edited.ssd&cpuMultiplier=2)

[The Count](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/ScottAdams/05%20The%20Count/adv05-count.ssd&cpuMultiplier=2)

[Buckaroo Banzai](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/ScottAdams/14b%20Buckaroo%20Banzai/adv14b-edit.ssd&cpuMultiplier=2)


## Code

***conv.pl*** is a Perl script that reads Scott Adams game files (in either TRS-80 .DAT format or compiled ScottKit .sao format) and then converts them to BeebScott format. Strictly speaking, the Perl script outputs a BBC BASIC program as plain text. That BBC BASIC program, when run on a BBC Micro computer (with 65(C)02 co-processor), will write the game data to a BBC Micro filesystem in BeebScott format.

***terp.bas*** is the Scott Adams game interpreter program, written in BBC BASIC. It reads in a game data file (which has been converted to BeebScott format by *conv.pl*)  and lets the user play the game on a BBC Micro computer or emulator.

You can [run some test cases](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd).
