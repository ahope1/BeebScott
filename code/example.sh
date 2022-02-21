# example commands to convert the DAT file for Adventureland to BeebScott format

basictool -tprvv terp.bas TERP
beeb putfile template.ssd TERP
basictool -t load.bas LOAD
beeb putfile template.ssd LOAD
./conv.pl adv01.dat
beeb putfile template.ssd DAT
beeb title template.ssd ADV01
mv template.ssd adv01.ssd
open adv01.ssd
