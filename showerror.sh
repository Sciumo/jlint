#!/bin/sh
# 

DIR=`dirname $0 | sed -e 's,\(.*\)/.*,\0,'`

OUTS=`find $DIR/log -name '*.errfiles'`
# findet alle *.out files im log ordner uns speichert sie in OUTS

for FILE in $OUTS
    do 
	if [ -s $FILE ]
	# if file is not zero size
	then
	    ERR=`echo $FILE | sed 's,.errfiles$,.err,'`
	    # falls nicht funktioniert, dann im showdiff schauen!

	    TEST=`basename $FILE | sed -e 's,.errfiles,,'`
	    echo for filenames of files that caused an error in test$TEST look in: $FILE
	    echo for error types look in : $ERR
	    echo
        fi
    done  #for

exit 0
