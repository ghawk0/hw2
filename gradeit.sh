#!/bin/sh

# George Hawk
# March 2, 2018
# A shell script to grade homework

myhw1=/usr/users/quota/students/2017/ghawk/cs241/hw1-ghawk0
rhhw1=~rhoyle/pub/cs241/hw01

# runs hoyle's diamond and saves it in a file
echo "5" | (cd $rhhw1 ; ./diamond) > output1

# runs my diamond and saves it in a file
echo "5" | (cd $myhw1 ; ./diamond) > output2

# edits the new files to be just stars
sed -i 's/[^*]//g' output1
sed -i 's/[^*]//g' output2

# checks is diamonds are different
diff -q output1 output2

#runs hoyle's rot128 and saves it in a file
echo "hello" | (cd $rhhw1 ; ./rot128) > output3

# runs my rot128 and saves it in a file
echo "hello" | (cd $myhw1 ; ./rot128) > output4

# checks if rot128's are different
diff -q output3 output4

# removes temp files
rm output1 output2 output3 output4
