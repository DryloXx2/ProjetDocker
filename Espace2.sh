#!/bin/bash

SecondCase (){
rm -vrf $1
mkdir $1
cd $1

n=0
while true
do
    echo "0" > $n
    let n++
done


}

SecondCase SmallFiles

