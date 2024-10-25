#!/bin/bash
echo "instalando consul"
sudo apt update && sudo apt install consul -y
echo "iniciando agente de consul"
consul agent -ui -bind=192.168.100.4 -client=0.0.0.0 -data-dir=. &
echo "Instalando node"
sudo apt install nodejs -y
sudo apt install aptitude -y
sudo aptitude install npm -y
echo "Clonando repositorio"
git clone https://github.com/omondragon/consulService
echo "Instalando dependencias de aplicacion web"
cd consulService/app
npm install consul
npm install express
echo "Inicializando instancia"
node index.js 3000 