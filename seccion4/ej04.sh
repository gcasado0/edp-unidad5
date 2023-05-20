#!/bin/bash

#La Secuencia de Fibonacci queda definida por la ecuaciones f(0)=0 , f(1)=1 y 
#f(n)=f(n-1)+f(n-2); con n>=2. 
#Quedando una secuencia infinita: 0,1,1,2,3,5,8… . 
#Crear un script que imprima los primeros 20 números de la Secuencia de Fibonacci.

FIBO1=0
echo $FIBO1
FIBO2=1
echo $FIBO2
for ((i=2; i<=20; i++))
do
    FIBO=$(($FIBO1+$FIBO2))
    echo $FIBO
    FIBO1=$FIBO2
    FIBO2=$FIBO    
done
