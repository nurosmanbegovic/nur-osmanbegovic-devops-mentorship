#!/bin/bash
# iterating through multiple directories
for file in /home/nur/nur-osmanbegovic-devops-mentorship/week-3/chapter13/test/*.txt /home/nur/nur-osmanbegovic-devops-mentorship/week-3/chapter13/test2
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
else
echo "$file doesn't exist"
fi
done