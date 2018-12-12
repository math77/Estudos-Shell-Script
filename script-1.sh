#!/bin/bash

echo 'Digite o nome de um arquivo'
read arquivo

if [ -f $arquivo ];then
   echo 'Esse arquivo possui texto'
else
   echo 'Não possui texto'
fi
