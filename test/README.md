# Tests

You can [run the tests](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=http://bbcmicro.co.uk//gameimg/discs/1411/cases.ssd) in a BBC Micro emulator.

***cases.sck*** is written in uncompiled ScottKit format and collates a number of test cases, which were originally discussed [on intfiction.org](https://intfiction.org/t/scott-adams-interpreter-discrepancies/).

***cases_BOL_ADDED.sao*** is the compiled version of *cases.sck*. I've had to manually edit *cases_BOL_ADDED.sao* to add the "unreferenced" noun BOL because the ScottKit compiler wrongly [drops](https://github.com/MikeTaylor/scottkit/issues/43#issuecomment-1001301926) unreferenced nouns.

***casesdo.bas*** is the result of running *cases_BOL_ADDED.sao* through the conversion script *[conv.pl](https://github.com/ahope1/BeebScott/blob/683f895b3c2d8ef4630402facde14857f99ec0f4/conv.pl)*. *casesdo.bas* is a BBC BASIC program that will write the test game data to a BBC Micro filesystem.

***cases.ssd*** is a disc-image that can be loaded into a BBC Micro emulator. It contains the test game data file and the BeebScott interpreter. You can [run the test game](http://bbcmicro.co.uk//jsbeeb/play.php?autoboot&disc=http://bbcmicro.co.uk//gameimg/discs/1411/cases.ssd) in a BBC Micro emulator.

***cases.DAT*** is a manually reformatted version of *cases_BOL_ADDED.sao*. *cases.DAT* can be (renamed and) loaded into ADVENTUR/CMD, the TRS-80 Scott Adams game interpreter written by Scott Adams himself and/or by Adventure International. 
