#!/bin/bash

echo "Input a: "; read a
echo "Input b: "; read b

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
