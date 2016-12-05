#!/bin/bash


clear

echo "----------------------------------------------"
echo "Atualização do Firefox para a versão 45.4.0 ESR"
echo "----------------------------------------------"

echo ">>> Descompactando arquivos"
echo "tar -jxf firefox-45.4.0esr.tar.bz2"
tar -jxf firefox-45.4.0esr.tar.bz2
echo " "
echo ">>> Movendo arquivos"
echo "mv firefox /opt/firefox"
rm -rf /opt/firefox
mv firefox /opt/firefox
echo ">>> Arquivos de instalação movidos"
echo " "
echo ">>> Criando cópia de segurança da instalação atual"
mv /usr/bin/firefox /usr/bin/firefox.old
echo ">>> Cópia de segurança finalizada"
echo " "
ln -s /opt/firefox/firefox /usr/bin/firefox
echo ">>> Criando links simbólicos"
echo "ln -s /opt/firefox/firefox /usr/bin/firefox"
echo " "
echo ">>> Matando processos da instalação antiga"
killall firefox
echo " "
echo " "
echo "Atualização do Firefox completa"
