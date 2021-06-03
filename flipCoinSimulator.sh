This problem displays the winner Heads or Tails

loop=0
heads=0
tails=0

while [[ loop -le 10 ]];do

x=$((RANDOM%2))
if [[ $x -eq 0 ]];then
	echo winner : heads
   ((heads++))
else 
	echo winner : tails
   ((tails++))
fi
((loop++))
done
echo heads :$heads
echo tails :$tails
