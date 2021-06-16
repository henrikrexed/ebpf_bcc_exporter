#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 0
fi

if [ -z "$1"]
  then
    echo "Operation is not specified"
    exit 0
else
   OPERATION=$1
fi

if [ -z "$2"]
  then
    PORT=9000
else
   PORT=$2
fi



case $OPERATION in
tcptop)
  python3 ../library/tcptop_exporter.py $PORT
;;

filetop)
  python3 ../library/filetop_exporter.py $PORT

;;

biotop)
  python3 ../library/biotop_exporter.py $PORT
;;

dirtop)
  python3 ../library/dirtop_exporter.py $PORT
;;

biosnoop)
  python3 ../library/biosnoop_exporter.py $PORT
;;

*)
echo “User Selected Choice not present”
exit 1

esac