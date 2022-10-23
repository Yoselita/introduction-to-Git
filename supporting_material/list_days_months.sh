#!/bin/bash

# The script creates a list of days in a week and months in a year
# Uses bash's sequence expression for the loop to iterate date command through months and week days
# The output is: months.txt and days.txt
# To run the script: ./list_days_months.sh

# Loop over days
[ -f days.txt  ] && rm days.txt 	# Delete output if already exists
for i in {24..30}; do
  date +%A -d "10/$i/2022" >> days.txt 
done  

# Loop over months
[ -f months.txt  ] && rm months.txt 	# Delete output if already exists
for i in {1..12}; do 
   date +%B -d "$i/01/2022" >> months.txt 
done 


