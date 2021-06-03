This problem displays the winner Heads or Tails

x=$((RANDOM%2))
if [[ $x -eq 0 ]];then
 echo winner : heads
else 
echo winner : tails
fi
