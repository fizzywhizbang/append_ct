#!/bin/bash
# this script enters directories and counts the files then appends the count to the directory name
for i in *
do
if [ -d "$i" ]
then
ct=`ls -l "$i"/* | wc -l | xargs`
echo "$i x $ct"
# mv "$i" "$i x $ct"
fi
done
