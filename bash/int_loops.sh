for (( i=1; i <= 12 ; i++ ))
do
      for (( j=1 ; j <= 12 ; j++ ))
      do
         echo –ne "$(( j * i ))\t"
      done
      
      echo
done

###

for i in $(cut -f 1,3 -d: /etc/passwd) ; do
   array[${i#*:}]=${i%:*}
done

echo "User ID $1 is ${array[$1]}."
echo "There are currently ${#array[@]} user accounts on the system."

## 
values=(39 5 36 12 9 3 2 30 4 18 22 1 28 25)
numvalues=${#values[@]}
for (( i=0; i < numvalues; i++ )); do
 lowest=$i
 for (( j=i; j < numvalues; j++ )); do
 if [ ${values[j]} -le ${values[$lowest]}]; then
 lowest=$j
 fi
 done
 temp=${values[i]}
 values[i]=${values[lowest]}
 values[lowest]=$temp
done
for (( i=0; i < numvalues; i++ )); do
 echo -ne "${values[$i]}\t"
done
echo
