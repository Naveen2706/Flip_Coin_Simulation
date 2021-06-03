This problem displays the winner Heads or Tails

loop=0
heads=0
tails=0

while [[ $heads -le 20 ]] && [[ $tails -le 20 ]];do

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
else
    	echo tails won :"$tails"matches
fi
