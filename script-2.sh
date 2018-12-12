#!/bin/bash

echo 'Digite o texto de deseja buscar'
read texto
echo 'Digite o arquivo no qual deseja buscar a palavra: '$texto''
read arquivo

grep $texto $arquivo

