#!/bin/bash
# find the valid phone numbers 
# use one line command only

echo " valid phone numbers are:"
grep -E '^\([0-9]{3}\)\s[0-9]{3}-[0-9]{4}|[0-9]{3}-[0-9]{3}-[0-9]{4}$' PhoneNumbers.txt 
