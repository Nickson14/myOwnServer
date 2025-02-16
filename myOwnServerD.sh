#!/bin/bash

# Banner de bienvenida
echo "===================================="
echo "   🚀 MY OWNSERVER - INSTALLER 🚀   "
echo "===================================="
echo ""

PS3="Selecciona una opción ingresando el número correspondiente: "

# Definir las opciones
options=("DNS" "DHCP" "SAMBA" "NTP" "APACHE2" "NGINX" "MARIADB" "POSTGRESQL" "NFS" "FTP" "Salir")

while true; do  # Bucle infinito hasta que el usuario elija salir
    select opt in "${options[@]}"; do
        case $REPLY in
            1) echo "🔹 Elegiste instalar DNS"
               apt update -y
               apt-get install -y bind9 bind9utils bind9-doc 
               echo "✅ Instalación de DNS completada."
               break ;;
            2) echo "🔹 Elegiste instalar DHCP"
               apt update -y
               apt-get install -y isc-dhcp-server
               echo "✅ Instalación de DHCP completada."
               break ;;
            3) echo "🔹 Elegiste instalar SAMBA"
               apt update -y
               apt-get install -y samba
               echo "✅ Instalación de SAMBA completada."
               break ;;
            4) echo "🔹 Elegiste instalar NTP"
               apt update -y
               apt-get install -y ntp
               echo "✅ Instalación de NTP completada."
               break ;;
            5) echo "🔹 Elegiste instalar APACHE2"
               apt update -y
               apt-get install -y apache2
               echo "✅ Instalación de APACHE2 completada."
               break ;;
            6) echo "🔹 Elegiste instalar NGINX"
               apt update -y
               apt-get install -y nginx
               echo "✅ Instalación de NGINX completada."
               break ;;
            7) echo "🔹 Elegiste instalar MARIADB"
               apt update -y
               apt-get install -y mariadb-server
               echo "✅ Instalación de MARIADB completada."
               break ;;
            8) echo "🔹 Elegiste instalar POSTGRESQL"
               apt update -y
               apt-get install -y postgresql
               echo "✅ Instalación de POSTGRESQL completada."
               break ;;
            9) echo "🔹 Elegiste instalar NFS"
               apt update -y
               apt-get install -y nfs-kernel-server
               echo "✅ Instalación de NFS completada."
               break ;;
            10) echo "🔹 Elegiste instalar FTP"
                apt update -y
                apt-get install -y vsftpd
                echo "✅ Instalación de FTP completada."
                break ;;
            11) echo "👋 Saliendo del script..."
                echo "===================================="
                echo "   ✅ Instalador MY OWNSERVER 🚀    "
                echo "   🔒 Desarrollado por Nickson Diaz Mojica"
                echo "===================================="
                exit 0 ;;
            *) echo "❌ Opción no válida, intenta de nuevo." ;;
        esac
    done
done
