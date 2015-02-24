#!/bin/bash
hostname=`/bin/hostname`
FILE=$1
if [ -e "$FILE" ];
then 
  echo "it exists"  
#scp pesdb01:/mnt/ddjax/$FILE .
else
while true; do
  read -p "Do you want to clear out $hostname 's database to make room for the replacement?" yn
  case $yn in
      [Yy]* ) /usr/sbin/rcpostgresql start && dropdb -p 34573 mpay && createdb -p 34573 mpay && psql -p 34573 mpay < $FILE;;
      [Nn]* ) exit;;
      * ) echo "Please answer yes or no.";;
  esac
done
fi
