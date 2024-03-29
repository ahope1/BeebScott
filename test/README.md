# Tests

The file you want is ***cases.DAT***. It contains tests, and it can be loaded and run in any Scott Adams game interpreter program (e.g. [ScottFree](http://ifarchive.org/indexes/if-archive/scott-adams/interpreters/scottfree/)). 

You can [run the tests](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd) in BeebScott right now. 


### Files

***cases.sck*** is written in uncompiled ScottKit format and collates a number of test cases, which were originally discussed [on intfiction.org](https://intfiction.org/t/scott-adams-interpreter-discrepancies/).

***cases_BOL_ADDED.sao*** is the compiled version of *cases.sck*. I've had to manually edit *cases_BOL_ADDED.sao* to add the "unreferenced" noun BOL because the ScottKit compiler wrongly [drops](https://github.com/MikeTaylor/scottkit/issues/43#issuecomment-1001301926) unreferenced nouns.

***cases.DAT*** is a manually reformatted version of *cases_BOL_ADDED.sao*. &nbsp; *cases.DAT* can be loaded into any Scott Adams game interpreter program. For example, it can be (renamed and) loaded into ADVENTUR/CMD, the TRS-80 Scott Adams game interpreter written by Scott Adams himself for Adventure International.

***cases.ssd*** is a disc-image that can be loaded into a BBC Micro emulator. It contains the BeebScott interpreter and the test game data file DAT (the result of running *cases_BOL_ADDED.sao* through the conversion script *[conv.pl](https://github.com/ahope1/BeebScott/tree/main/code/conv.pl)*). You can [run the test game](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/BeebScott/master/test/cases.ssd) in a BBC Micro emulator.


