#!/bin/bash
sudo apt-get update

# Instalar dependencias necesarias
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Añadir la clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Añadir el repositorio de Docker a las fuentes de APT
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizar las fuentes de APT
sudo apt-get update

# Instalar Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Verificar que Docker se ha instalado correctamente
sudo systemctl status docker

# Descargar la imagen de Ubuntu 22.04 LTS
sudo docker pull ubuntu:22.04

# Crear y ejecutar un contenedor con la imagen de Ubuntu 22.04 LTS
sudo docker run -it --name ubuntu_lts_22 ubuntu:22.04 /bin/bash

# sudo docker start ubuntu_lts_22

# sudo docker exec -it ubuntu_lts_22 /bin/bash

# sudo docker stop ubuntu_lts_22
# sudo docker rm ubuntu_lts_22
# cat /etc/os-release
