#!/bin/bash

#GOAL :Remove last character of each line.
#Logic: ${VAR%word} expansion can help us to chop the last character from a variable
#The pattern ‘?‘ matches any single character. Since we want to remove the last character, we can use the ‘?’ pattern as the suffix.
#cat -e Displays trailing spaces clearly by showing $ as end of line
while IFS="" read var
do echo "${var%?}"
done < /home/ali/Desktop/trimData.txt | cat -e  
