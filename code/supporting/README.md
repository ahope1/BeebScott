## Files

[***NEWL.bas***](https://github.com/ahope1/BeebScott/tree/main/code/supporting/NEWL.bas) is a BBC BASIC program that contains the inline assembler source for a machine-code program (named *NEWL* on *[template.ssd](https://github.com/ahope1/BeebScott/tree/main/code/template.ssd)*) that redirects the [WRCHV](http://danceswithferrets.org/geekblog/?cat=18&paged=3) vector to a custom machine-code routine that replaces every **|** with a newline in any text that is to be printed onscreen.  

[***!BOOT***](https://github.com/ahope1/BeebScott/tree/main/code/supporting/!BOOT) is the boot file for *[template.ssd](https://github.com/ahope1/BeebScott/tree/main/code/template.ssd)*. It loads and runs the loader program *[LOAD](https://github.com/ahope1/BeebScott/tree/main/code/load.bas)* which may or may not run *NEWL*.
