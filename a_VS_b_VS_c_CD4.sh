#!/bin/bash

echo "Input a: "; read a
echo "Input b: "; read b
echo "Input c: "; read c

: >> 'END'
if (( $a == $b & $a ==$c ))
then
echo "a ($a) ir vienāds ar b ($b) un c ($c) "
elif (( $a > $b & $a > $c ))
then
echo "a ($a) ir lielākais skaitļis "
else
echo "a ($a) ir mazāks par b ($b)"
fi




if (( $a == $b ))
then
echo "a ($a) ir vienāds ar b ($b)"
elif (( $a > $b ))
then
echo "a ($a) ir lielāks par b ($b)"
else
echo "a ($a) ir mazāks par b ($b)"
fi







: <<'END'
if (( $a == $b ))
then
echo "a ($a) ir vienāds ar b ($b)"
fi

if (( $a != $b ))
then
echo "a ($a) ir nevienāds ar b ($b)"
fi

if (( $a > $b ))
then
echo "a ($a) ir lielaks ar b ($b)"
fi

if (( $a < $b ))
then
echo "a ($a) ir mazāks ar b ($b)"
fi

if (( $a >= $b ))
then
echo "a ($a) ir lielāks vai vienāds ar b ($b)"
fi

if (( $a <= $b ))
then
echo "a ($a) ir mazāks vai vināds ar b ($b)"
fi






: <<'END'
c=`expr $a + $b`
echo "$a + $b " =$c
END
