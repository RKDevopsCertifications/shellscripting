#!/bin/bash
#count the each word in a file how it present in a search file
#author : Ramesh 

echo "spilt words based on space and sort"
cat search.txt |tr ' ' '\n' | sort
echo " split words based on space and sort and count it uniquely"
cat search.txt |tr ' ' '\n' | sort | uniq -c
 
echo " words without in order % awk  print in numner and word"
cat search.txt |tr ' ' '\n' | sort | uniq -c| sort -nr

echo "final command to print the result:" 
cat search.txt |tr ' ' '\n' |sort | uniq -c | sort -nr|awk '{print $2, $1}'
