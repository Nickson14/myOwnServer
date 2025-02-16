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
               dnf update -y
               sudo dnf install -y bind bind-utils bind-doc
               echo "✅ Instalación de DNS completada."
               break ;;
            2) echo "🔹 Elegiste instalar DHCP"
               sudo dnf  update -y
               sudo dnf install -y dhcp-server
               echo "✅ Instalación de DHCP completada."
               break ;;
            3) echo "🔹 Elegiste instalar SAMBA"
               dnf update -y 
               sudo dnf install -y samba samba-client
               echo "✅ Instalación de SAMBA completada."
               break ;;
            4) echo "🔹 Elegiste instalar NTP"
               dnf update -y
	       sudo dnf install -y chrony
               echo "✅ Instalación de NTP completada."
               break ;;
            5) echo "🔹 Elegiste instalar APACHE2"
               dnf update -y
	       sudo dnf install -y httpd
               echo "✅ Instalación de HTTPD completada."
               break ;;
            6) echo "🔹 Elegiste instalar NGINX"
               dnf update  -y
	       sudo dnf install -y nginx
               echo "✅ Instalación de NGINX completada."
               break ;;
            7) echo "🔹 Elegiste instalar MARIADB"
               dnf  update -y
               sudo dnf install -y  mariadb-server
               echo "✅ Instalación de MARIADB completada."
               break ;;
            8) echo "🔹 Elegiste instalar POSTGRESQL"
               dnf  update -y
               dnf  install -y postgresql-server
               echo "✅ Instalación de POSTGRESQL completada."
               break ;;
            9) echo "🔹 Elegiste instalar NFS"
               dnf   update -y
	       sudo dnf install -y nfs-utils
               echo "✅ Instalación de NFS completada."
               break ;;
            10) echo "🔹 Elegiste instalar FTP"
                dnf  update -y
	        sudo dnf install -y vsftpd
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
