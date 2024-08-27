#!/bin/bash
# transpos file  data 
#Author : rkdevops19

awk '
{
    for (i = 1; i <= NF; i++)  {
        a[i] = a[i] " " $i
    }
}
END {
    for (i = 1; i <= NF; i++) {
        print a[i]
    }
}' tfile.txt


