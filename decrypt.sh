#!/bin/bash 

## Decrypt the files 

echo "******* Decrypt Files **********"
## Usage: 
## 1. First enter the filename you want to decrypt (with file extension)
## 2. Then enter the filename you want it to be (with extension)
cat $1 | ccrypt -d  > $2

echo " All Done. :) "






