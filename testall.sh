#! /bin/sh
NOTAR=59

DIR=`dirname $0 | sed -e 's,\(.*\)/.*,\0,'`

if [ "$1" = "--help" ]
then
    echo TODO: give information on how to do testing
fi


#if [ ! -f $DIR/README.tests ]
# geht nicht, denn info fuer testen erhaelt man erst im README.tests
#besser nach dem tests.tar.bz2 testen und dann wird halt README.tests ueberschrieben
# aber ich weiss keine bessere Loesung, oder wo liegt genau das problem??
if [ -f $DIR/tests.tar.bz2 ]
then
    tar -xhv --bzip2 -f tests.tar.bz2
else
    echo file tests.tar.bz2 not found, try make test-dist
    exit $NOTAR
fi

exit 0

# ./testall.sh prueft am Anfang auch auf dieses README.tests. Falls es das nicht gibt, entpackt es tests.tar.bz2. Falls es dort Probleme gibt, bricht es ab.
# todo error handling


