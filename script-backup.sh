#!/bin/bash

#Cria o diretorio de backup caso não exista
if [ -e ~/Backup ];then
   echo "Oiii"
else
   mkdir ~/Backup		
fi 

#Cria um arquivo de texto para guardar os logs dos backups
touch ~/Backup/backups.log
#A flag -vur utilizada para fazer um backup inteligente copiando somente #arquivos que foram alterados ou criados.
cp -vur ~/Imagens/ ~/Documentos/ ~/Backup >> ~/Backup/backups.log
date >> ~/Backup/backups.log
echo -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ >> ~/Backup/backups.log
whiptail --title "Antes de ir..." --yesno "Deseja apagar os arquivos de origem?" 10 60
if [ $? == 0 ];then
	rm -fr ~/Imagens/
	rm -fr ~/Documentos/
fi
