#!/bin/bash

#if (...) then ... elif (...) then ... else ... fi 
a=$1
if (( $a > 0 )); then
      echo "Izdr. no galv. zara (jā g.), tad, kad $a ir >0"
elif (( $a == 0)); then
      echo "Izdr. no alt. zara (jā g.), tad, kad $a ir =0"
else
      echo "Izdr. no galv. zara (ne g.), tad, kad $a ir >0"
      echo "Nostrāda tad, kad iestājas nē gad. visos iepreksejas jautajumos"
fi
echo "Šis teksts tiks attēlots JEBKURĀ GADĪ JUMĀ!"







: <<'END'
#if (...) then ... else... fi
a=$1
if (( $a > 0 ))
then
      echo "Izdr. no galv. zara (jā g.), tad, kad $a ir >0"

else
      echo "Izdr. no galv. zara (ne g.), tad, kad $a ir >0"

fi
echo "Šis teksts tiks attēlots JEBKURĀ GADĪ JUMĀ!"


: <<'END'
#if (...) then ... fi
a=$1
if (( $a > 0 ))
then
    echo "Izdr. no galv. zara (jā g.), tad, kad $a ir >0"
fi
echo "Šis teksts tiks attēlots JEBKURĀ GADĪ JUMĀ!"
END
