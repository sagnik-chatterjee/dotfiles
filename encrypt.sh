#!/bin/bash 

## Encrypt the files 

echo "******* Encrypt Files **********"
## Usage: 
## 1. First enter the filename you want to encrypt (with file extension)
## 2. Then enter the filename you want it to be (with extension)
cat $1 | ccrypt -e  > $2

echo " All Done. :) "






