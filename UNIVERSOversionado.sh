#!/bin/bash
mkdir bin
chmod +x *
export MAIN_DIR=$PWD
choiceForServer=1


echo "Por favor, introduce el número correspondiente a la versión de Java que deseas descargar:"
echo "1. Java 8"
echo "2. Java 17"
echo "3. Java 21"
echo "4. Java 22"

read version

if [ $version -eq 1 ]
then
    echo "Descargando Java 8..."
    wget -q "https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u422-b05/OpenJDK8U-jdk_ppc64_aix_hotspot_8u422b05.tar.gz" -O bin/java.tar.xz
elif [ $version -eq 2 ]
then
    echo "Descargando Java 17..."
    wget -q "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.12%2B7/OpenJDK17U-jdk_ppc64_aix_hotspot_17.0.12_7.tar.gz" -O bin/java.tar.xz
elif [ $version -eq 3 ]
then
    echo "Descargando Java 21..."
    wget -q "https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.4%2B7/OpenJDK21U-jdk_ppc64_aix_hotspot_21.0.4_7.tar.gz" -O bin/java.tar.xz
elif [ $version -eq 4 ]
then
    echo "Descargando Java 22..."
    wget -q "https://github.com/adoptium/temurin22-binaries/releases/download/jdk-22.0.2%2B9/OpenJDK22U-jdk_x64_linux_hotspot_22.0.2_9.tar.gz" -O bin/java.tar.xz
else
    echo "Opción no válida. Por favor, introduce 1, 2, 3 o 4."
    ./UNIVERSOversionado.sh  
fi

./installJava

echo "> Installing AFK(Away From Keyboard) Script "
python3 -m pip install bpytop

echo ""




