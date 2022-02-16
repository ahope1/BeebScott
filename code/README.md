## Code

[***conv.pl***](https://github.com/ahope1/BeebScott/tree/main/code/conv.pl) **is a Perl script that will read a Scott Adams game file and convert it to BeebScott format.** The input file can be either a TRS-80 .DAT file (a.k.a. a "[ScottFree format](https://www.ifarchive.org/indexes/if-archive/scott-adams/games/scottfree/)" file) or a compiled [ScottKit](https://github.com/MikeTaylor/scottkit) .sao file. The output from *conv.pl* is a file named DAT, which should be added to the BBC Micro disc-image *template.ssd* (below).

[***terp.bas***](https://github.com/ahope1/BeebScott/tree/main/code/terp.bas) **is a Scott Adams game interpreter program, written in BBC BASIC.** Before being run, *terp.bas* must be tokenized and compressed ("packed") with [basictool](https://github.com/ZornsLemma/basictool) and then added to *template.ssd* with the filename TERP. When run on a BBC Micro computer (or emulator), TERP will read in a game data file, which must already have been converted to BeebScott format by *conv.pl*. The game can then be played. 

[***load.bas***](https://github.com/ahope1/BeebScott/tree/main/code/load.bas) **is the loader program, written in BBC BASIC.** It displays the generic intro text, adapted from Scott Adams's own TRS-80 interpreter(s); it then sets up a custom newline routine in machine code if the game data contains manual newlines; and finally it runs the interpreter program, TERP. 

[***template.ssd***](https://github.com/ahope1/BeebScott/blob/main/code/template.ssd) **is a "blank" bootable floppy disc image in Acorn DFS format.** The file *terp.bas* should be tokenized and compressed with [basictool](https://github.com/ZornsLemma/basictool), and the compressed file should be added to *template.ssd* with the filename TERP. The file *load.bas* should be tokenized with basictool, and the tokenized file should be added to *template.ssd* with the filename LOAD. A game data file named DAT (the output of the *conv.pl* script) should also be added to *template.ssd*. (Files can be added to *template.ssd* with the help of [Disc Image Manager](https://stardot.org.uk/forums/viewtopic.php?p=299825#p299825) or [sweh's MMB/SSD Perl utilities](https://sweh.spuddy.org/Beeb/mmb_utils.html).) 

There's [a YouTube video](https://www.youtube.com/watch?v=lEjDFMw25kw) that demos the use of the above programs and files.

You can now [play some games](https://github.com/ahope1/BeebScott/tree/main/games) (or [run some tests](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd)) in BeebScott.



