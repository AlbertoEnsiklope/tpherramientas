#!/bin/bash

sudo apt update
sudo apt clean
sudo apt autoremove

# Descargar la configuración del repositorio y las claves necesarias
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-3_all.deb

# Verificar la integridad del paquete
echo "de7ef83a663049b5244736d3eabaacec003eb294a4d6024a8fbe0394f22cc4e5  protonvpn-stable-release_1.0.3-3_all.deb" | sha256sum --check -

# Instalar el repositorio de Proton VPN
sudo dpkg -i ./protonvpn-stable-release_1.0.3-3_all.deb && sudo apt update

# Actualizar el sistema y la aplicación Proton VPN si ya está instalada
sudo apt update && sudo apt upgrade -y

# Instalar Proton VPN si no está instalado
sudo apt install -y proton-vpn-gnome-desktop

# Verificar si hay actualizaciones y asegurarse de que se está ejecutando la última versión de la aplicación
sudo apt update && sudo apt upgrade -y

echo "Instalación y actualización de Proton VPN completadas."
