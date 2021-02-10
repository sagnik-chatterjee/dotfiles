#!/bin/bash 
## Please keep it mind to keep the files in the same packages 
## then it wont have a problem while running 


#mkdir out file for stroing the class files if not already made 
mkdir out 2>/dev/null ## supress errors  
# Compiling the single java code 
javac -d out $1.java 
#storing this path on  a varibale 
loc1=$(pwd)
#Executing the Java Code 
java -cp out/ $1

