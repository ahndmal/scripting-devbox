TERM=vt100 # assume this as a default
line=$(tty)
while read dev termtype; do
 if [ $dev = $line ]; then
 TERM=$termtype
 echo "TERM set to $TERM."
 break
 fi
done


findterm ( ) {
 TERM=vt100 # assume this as a default
 line=$(tty)
 while read dev termtype; do
 if [ $dev = $line ]; then
 TERM=$termtype
 echo "TERM set to $TERM."
 break;
 fi
 done
}
findterm < /etc/terms


{
 TERM=vt100 # assume this as a default
 line=$(tty)
 while read dev termtype; do
   if [ $dev = $line ]; then
     TERM=$termtype
     echo "TERM set to $TERM."
     break;
   fi
 done
} < /etc/terms



echo 'Select a directory:'
done=false
while [ $done = false ]; do
 do=true
 num=1
 for direc in $DIR_STACK; do
 echo $num) $direc
 num=$((num+1))
 done
 echo -n 'directory? '
 read REPLY
 if [ $REPLY -lt $num ] && [ $REPLY -gt 0 ]; then
 set - $DIR_STACK
 #statements that manipulate the stack...
 break
 else
 echo 'invalid selection.'
 fi
done


