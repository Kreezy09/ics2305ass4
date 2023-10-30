count=$(who | grep $USER | wc -l)
echo "$USER is logged on $count times."