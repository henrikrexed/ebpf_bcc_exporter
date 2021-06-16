#bash/bin
while getopts p:o: option
do
 case "${option}"
 in
 p) PORT=${OPTARG};;
 o) OPERATION=${OPTARG};;
 esac
done


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