#print if the provided number is greater than 10 or not?

#!/bin/bash

NUMBER=$1
if [ $NUMBER -gt 10 ]
then
echo "The $NUMBER is greater than 10"
else
echo "The $NUMBER is less than 10"
fi 