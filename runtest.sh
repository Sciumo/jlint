#!/bin/sh
# run tests

#prologue test if right number of arguments were passed
WRONGARGS=66
if [ $# -ne 1 ]
then
    echo "Usage: `basename $0` max     # (runs tests 1 to max)"
    exit $WRONGARGS
fi

DIR=`dirname $0 | sed -e 's,\(.*\)/.*,\0,'`
LOGDIR=$DIR/log

TEST=$1
I=1

while [ "$I" -le $TEST ] 
do
    
    for F in log err errfiles
    do
	if [ -f $LOGDIR/$I.$F ]
	    then
	    rm $LOGDIR/$I.$F
	fi # delete log files if they already exist
    done

    if [ -d $DIR/tests/test$I ]
    then
	find $DIR/tests/test$I/ -name '*.class' | \
	sed -e 's,\$,\\$,g' -e "s,\(.*\), jlint \1 >>$LOGDIR/$I.log 2>>$LOGDIR/$I.err," | sh 2>>$LOGDIR/$I.errfiles
	# Fehlermeldungen werden in 1.err geschrieben, 
	# Namen der fehler erzeugenden class files in 1.errfiles
	# Ausgaben von jlint in 1.log
    else 
	echo test directory $DIR/tests/test$I does not exist
    fi
    echo test$I OK
    I=`expr $I + 1`
done



#ERR=$DIR/log/1.errfiles
#if [ -f $ERR ]
#then
#sed -e '1i\
# Zeile aus 1.errfiles sollte hier reingeschrieben werden' $ERR > $DIR/log/1.err
#fi


exit 0


# test 1 tests classes from test.java
# test 2 tests minimal class that shows bug with jvm 1.4
# test 3 tests couple of classes from java/io jvm 1.3 compared to classes from jvm 1.4
# test 4 tests couple of classes from java/io/* 1.3
# test 5 tests couple of classes from java/io/* 1.4

# TODO
# test 10 runs valgrind on jlint
# test 11 runs mpatrol on jlint
# test 15 runs jlint on linux and freebsd


							 #gibt es nicht
#wegen Testsuite:					  error		error
#				default		run       default	run
#test 1 test.java		1.out		1.log	  1.eout	1.err
#test 2 java/lang/*.class	2.out		2.log	  2.eout	2.err
#...
#test N java/*			n.out		n.log	  n.eout	n.err




#fuehrt tests 1 - N aus, je nachdem wieviel man will. wobei sich hier 1 - N mehr auf Anzahl java Files bezieht, als auf verschiedene Tests.  Kann natuerlich auch verschiedene Sachen testen und je nachdem nicht alle Tests machen?!

#ein Test koennte z.B auch valgrind oder mpatrol auf jlint loslassen
#ein anderer Test koennte zumindest voruebergehend schauen, dass mit gcc2.95 gleicher Output produziert wird  wie mit gcc3.2
