#!/bin/bash

# Addition,Soustraction,Multiplication,Division

if [ $2 = "+" ]
 then
 echo results=$(($1 + $3))
fi

if [ $2 = "-" ]
 then
 echo results=$(($1 - $3))
fi

if [ $2 = "x" ]
 then
 echo results=$(($1 x $3))
fi

if [ $2 = "/" ]
 then
 echo results=$(($1 / $3))
fi
