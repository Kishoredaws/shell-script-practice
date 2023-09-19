#print if the provided number is greater than 10 or not?

#!/bin/bash

# NUMBER=$1
# if [ $NUMBER -gt 10 ]
# then
# echo "The $NUMBER is greater than 10"
# else
# echo "The $NUMBER is less than 10"
# fi 

NUMBER=$1
if [ $NUMBER -lt 100 ]
then
echo "$NUMBER is lessthan 100"
else
echo "$NUMBER is greater than 100"
fi 
