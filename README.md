# BeebScott

BeebScott is an interpreter for playing [Scott Adams](http://www.msadams.com/adventures.htm) text adventure games on a BBC Micro computer ([or](https://bbc.godbolt.org) [emulator](http://www.mkw.me.uk/beebem/)). BeebScott is written in 8-bit BBC BASIC.

Watch [a video](https://www.youtube.com/watch?v=lEjDFMw25kw) showing you how to use BeebScott. And [another video](https://www.youtube.com/watch?v=Y9r2r1hbr94), of BeebScott running on real hardware.

Read [a blogpost](https://ahopeful.wordpress.com/2022/02/14/beebscott-the-scott-adams-interpreter-nobody-asked-for/) about BeebScott. 


## Games

Some games in Scott Adams format have been converted for use with BeebScott. Play them in your web browser:

[Secret Mission](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/ScottAdams/03%20Secret%20Mission/adv03-edited.ssd&cpuMultiplier=2) ([info](https://github.com/ahope1/BeebScott/tree/main/games/ScottAdams/03%20Secret%20Mission))

[The Count](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/ScottAdams/05%20The%20Count/adv05-count.ssd&cpuMultiplier=2) ([info](https://github.com/ahope1/BeebScott/tree/main/games/ScottAdams/05%20The%20Count))

[Buckaroo Banzai](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/ScottAdams/14b%20Buckaroo%20Banzai/adv14b-edit.ssd&cpuMultiplier=2) ([info](https://github.com/ahope1/BeebScott/tree/main/games/ScottAdams/14b%20Buckaroo%20Banzai))

[Ghost King](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/main/games/GhostKing/gk.ssd&cpuMultiplier=2) ([info](https://github.com/ahope1/BeebScott/tree/main/games/GhostKing))


## Code

Go to [the *code* subfolder](https://github.com/ahope1/BeebScott/tree/main/code/).


## History

The [BeebScott interpreter program](https://github.com/ahope1/BeebScott/blob/main/code/terp.bas) (or "terp"), which can run games that are written to conform to version 8.x of the Scott Adams format, is an evolution of [my previous terp](https://github.com/ahope1/Beeb-Pirate-Adventure), which was written specifically to run a version of the game Pirate Adventure that conformed to an earlier version (v4.x) of the Scott Adams game format. That earlier terp was, in turn, a BBC Micro port of the original TRS-80 BASIC listing that had been published in [BYTE magazine](https://archive.org/details/byte-magazine-1980-12/page/n193/mode/1up) in 1980, and I tried to keep the same line-numbering and variable names (and even the typos) when I ported the listing to the Beeb. Some of those line-numbers have been retained in the guise of function names in the source code for the BeebScott terp, out of a confused and annoying sense of nostalgia or perhaps a warped desire for "authenticity". 
