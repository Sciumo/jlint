#!/bin/sh
# show all the log differences

DIR=`dirname $0 | sed -e 's,\(.*\)/.*,\0,'`

# dirname gibt teil des namens ohne file
# basename gibt filenamen ohne directory
# z.B. $0 = jlint/showdiff.sh   dann ist DIR = jlint
# geht nur aus dem Vaterverzeichnis heraus, nich z.B gcc3.2/jlint/showdiff.sh (gibt Fehler) 
# geht hingegen wenn man \0 nimmt statt \1
# mit \0 geht es immer, mit \1 kommt z.B. beim oberen nur DIR = gcc3.2
# also mit \0 funktioniert es nur, wenn es gar nix zu ersetzen gibt!!
# und \0 scheint einfach den dirname zu nehmen, also auch unnoetig!!
# \n ist backreference to nth group
# wobei \(expr\) der group operator ist!

OUTS=`find $DIR/log -name '*.out'`
# findet alle *.out files im log ordner uns speichert sie in OUTS

for FILE in $OUTS
    do
        LOG=`echo $FILE | sed 's,.out$,.log,'`
# ersetzt in jedem string file.out durch file.log

#        LOG=`echo $FILE | sed 's,\.out$,.log,'`  # war so, aber . muss man nicht escapen glaub ich!
# oder besser gefragt, warum brauch ich \. ??
# ist das $ in out$ fuer matches end of the line? also dass keine zeichen mehr kommen??



        if [ -f $LOG ]
	# -f is true if file is a regular file and not a directory or device file
        then
                if [ "`cmp $FILE $LOG`" != "" ]
		   # cmp vergleicht 2 Files byte fuer byte und gibt erste stelle wo sie sich unterscheiden
		   # zurueck
		   # durch `cmd` wird command ausgefuehrt!
                then
			echo "-------------------------------------------------------------"
			echo  BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
			echo "-------------------------------------------------------------"
                        echo diff $FILE $LOG
                        diff $FILE $LOG
                fi
        fi
    done  #for

exit 0

#vergleicht alle .log files die mit runtest.sh entstehen mit den gespeicherten .out files und falls es einen unterschied gibt, wird der ausgegeben.  mit diff x.{out, log} Falls sich nichts geaendert hat gibts ein true, sonst ein false und die Angabe des Grundes und des Tests und evtl. noch mehr Ausgaben.

# ?? wie soll ich da mehr Ausgaben machen??
