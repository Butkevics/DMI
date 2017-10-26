#!/bin/bash
a=$1
b=$2
c=$3
# ja a ir <par b (un < c) un b < c
if (( $a < $b && $b < $c ))
then
    echo "GATAVS(1.): $a $b $c"
fi
 

# ja c ir <par b (un < c) un b < a 
if (( $c < $b && $b < $a ))
then 
    echo "GATAVS(2.): $c $b $a" 
fi
# ja b <par a (un < c) un a < c
if (( $b < $a && $a < $c ))
then
echo "GATAVS(3.): $b $a $c"
fi

# ja a ir <par c (un < b) un c < b
if (( $a < $c && $c < $b ))
then
echo "GATAVS(4.): $a $c $b"
fi

# ja b ir <par c (un < a) un c < a
if (( $b < $c && $c < $a ))
then
echo  "GATAVS(5.): $b $c $a"
fi

# ja c ir <par a (un < b) un a < b
if (( $c < $a && $a < $b ))
then
echo "GATAVS(6.): $c $a $b"
fi




