## Code

[***conv.pl***](https://github.com/ahope1/BeebScott/tree/main/code/conv.pl) is a Perl script that will read a Scott Adams game file and convert it to BeebScott format. The input file can be either a TRS-80 .DAT file (a.k.a. a "[ScottFree format](https://www.ifarchive.org/indexes/if-archive/scott-adams/games/scottfree/)" file) or a compiled [ScottKit](https://github.com/MikeTaylor/scottkit) .sao file. (What *conv.pl* actually outputs is a BBC BASIC program in plain text. That BBC BASIC program, when run on a BBC Micro computer with 65(C)02 co-processor, will write the converted data in BeebScott format to a BBC Micro filesystem.)

[***terp.bas***](https://github.com/ahope1/BeebScott/tree/main/code/terp.bas) is a Scott Adams game interpreter program, written in BBC BASIC. Before being run, *terp.bas* must be compressed ("packed") with [basictool](https://github.com/ZornsLemma/basictool). When run, *terp.bas* will read in a game data file (which has been converted to BeebScott format by *conv.pl*) and enables the user to play the game on a BBC Micro computer or emulator. 

[***load.bas***](https://github.com/ahope1/BeebScott/tree/main/code/load.bas) is the loader program, written in BBC BASIC. It displays the generic intro text, adapted from Scott Adams's own TRS-80 interpreter(s); it sets up a custom newline routine in machine code if the game data contains manual newlines; and it then runs *terp.bas*. 

***template.ssd*** is a bootable floppy disc image in Acorn DFS format, to which the files *conv.pl*, *terp.bas* (renamed $.TERP) and *load.bas* (renamed $.LOAD) should be added with [sweh's MMB/SSD Perl utilities](https://sweh.spuddy.org/Beeb/mmb_utils.html), for example, or with [Disc Image Manager](https://stardot.org.uk/forums/viewtopic.php?p=299825#p299825).

You can now [play some games](https://github.com/ahope1/BeebScott/tree/main/games) (or [run some tests](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd)) in BeebScott.
