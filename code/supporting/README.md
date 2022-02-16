## Files

[***NEWL.bas***](https://github.com/ahope1/BeebScott/tree/main/code/supporting/NEWL.bas) is a BBC BASIC program that contains the inline assembler source for a machine-code program (named *NEWL* on *[template.ssd](https://github.com/ahope1/BeebScott/tree/main/code/template.ssd)*) that redirects the WRCHV vector to a custom machine-code routine that replaces every **|** with a newline (CHR$10+CHR$13). 

[***!BOOT***](https://github.com/ahope1/BeebScott/tree/main/code/supporting/!BOOT) is the boot file for *[template.ssd](https://github.com/ahope1/BeebScott/tree/main/code/template.ssd)*. It loads and runs the loader program *[LOAD](https://github.com/ahope1/BeebScott/tree/main/code/load.bas)* which may or may not run *NEWL*.
