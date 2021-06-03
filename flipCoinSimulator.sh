This problem displays the winner Heads or Tails

loop=0
heads=0
tails=0
headstwo=$(($heads-$tails))
tailstwo=$(($tails-$heads))

while [[ $heads -le 19 ]] && [[ $tails -le 19 ]];do

x=$((RANDOM%2))
if [[ $x -eq 0 ]];then
	echo winner : heads
   ((heads++))
else 
	echo winner : tails
   ((tails++))
fi
done
echo heads :$heads
echo tails :$tails

if [[ $heads -gt $tails ]];then
	echo heads won :"$heads"matches

elif [[ $heads -eq $tails ]];then
        echo its tie   :"$heads"heads & "$tails"tails
while [[true]];do
x=$((RANDOM%2))
	if [[ $x -eq 0 ]];then
        echo winner : heads
   ((heads++))
else
        echo winner : tails
   ((tails++))
        fi
if [[ $headstwo -ge 2 ]];then
	echo heads win tiebreaker:$heads
	break
elif [[$tailstwo -ge 2 ]];then
	echo tails win tiebreaker:$tails
	break
fi
done

else
    	echo tails won :"$tails"matches
fi
