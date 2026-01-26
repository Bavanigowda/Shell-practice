#1/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
   echo "given number $NUMBER is less than 10"
elif [ $Number -eq 10]; then 
else
   echo "given number $NUMBER is greater than to 10"
fi

#[ $NUMBER -lt 10 ] = here after started the braces it should have 
#a space "its mandatory
#while closing also same

#-lt = less than
#-eq =  equal to
#-gt =greater than

#first if = true 
#else = false 

#inbetween if we need to add any condistion then 
#then (use elif )