#!/bin/bash

#3. piemērs - izteiksmes (+,-,*,/,%) ar konstantēm
a=10
b=40
echo "-------- Piemērs Nr.3 ----------"
val31=`expr $a + $b`
echo "$a + $b= " $val31
val32=`expr $a - $b`
echo "$a - $b = " $val32
val33=`expr $a \* $b`
echo "$a * $b = " $val33
val34=`expr $a / $b`
echo "$a / $b = " $val34
val35=`expr $a % $b`
echo "$a % $b = " $val35
echo "--------------------------------"

#2. piemērs - izteiksmes (+,-,*,/,%) ar konstantēm
echo "-------- Piemērs Nr.2 ----------"
val21=`expr 2 + 3`
echo "2 + 3 = " $val21
val22=`expr 2 - 3`
echo "2 - 3 = " $val22
val23=`expr 2 \* 3`
echo "2 * 3 = " $val23
val24=`expr 2 / 3`
echo "2 / 3 = " $val24
val25=`expr 2 % 3`
echo "2 % 3 = " $val25
echo "--------------------------------"

#1. piemērs - pareizs izteiksmes pieraksts
echo "-------- Piemērs Nr ---------------"
val11='expr 2+2'
echo "Parastas apostrofi bez atstarpēm "$val11
val12='expr 2 + 2'
echo "Parastas apostrofi ar atstarpēm "$val12
val13=`expr 2+2`
echo "Neparastas apostrofi bez atstarpēm "$val13
val14=`expr 2 + 2`
echo "Neparastas apostrofi ar atstarpēm "$val14
echo "-----------------------------------"

