🚀 MY OWNSERVER - Instalador de Servicios en Linux

Este script en Bash permite instalar rápidamente varios servicios en un servidor Linux, facilitando la configuración y automatización de entornos de red y servidores.

📖 Descripción

El script muestra un menú con diversas opciones de instalación. El usuario solo necesita seleccionar un número y el servicio correspondiente se instalará automáticamente.

🔹 Servicios Soportados

DNS (BIND9)

DHCP (isc-dhcp-server/dhcp-server)

SAMBA

NTP (ntp/chrony)

Apache2 (httpd en RedHat)

NGINX

MariaDB

PostgreSQL

NFS

FTP (vsftpd)

⚙️ Requisitos

🟢 Para Debian/Ubuntu:

Sistema basado en Debian (Ubuntu, Linux Mint, etc.).

Usuario con permisos de superusuario (sudo).

Conexión a internet.

🔴 Para RedHat/Rocky Linux:

Sistema basado en RedHat (RHEL, Rocky Linux, AlmaLinux, CentOS).

Usuario con privilegios root o acceso a sudo.

Conexión a internet.

🛠️ Instalación y Uso

Clonar el repositorio:

git clone https://github.com/Nickson14/myOwnServer.git
cd myOwnServer

Ejecutar el instalador según la distribución:

Debian/Ubuntu:

chmod +x  myOwnserverD.sh
./myOwnServerD.sh

RedHat/Rocky Linux:

chmod +x myOwnServerR.sh
./myOwnServrR.sh

Seleccionar el servicio que deseas instalar ingresando el número correspondiente en el menú.

📝 Notas

Este script automatiza la instalación, pero no realiza configuraciones avanzadas.

Es recomendable verificar los archivos de configuración de cada servicio después de la instalación.

Se recomienda reiniciar los servicios después de la instalación usando:

sudo systemctl restart servicio

Ejemplo:

sudo systemctl restart apache2

🖥️ Compatibilidad

Servicio

Debian/Ubuntu

RedHat/Rocky Linux

DNS

bind9, bind9utils, bind9-doc

bind, bind-utils, bind-doc

DHCP

isc-dhcp-server

dhcp-server

SAMBA

samba

samba, samba-client

NTP

ntp

chrony

Apache

apache2

httpd

NGINX

nginx

nginx

MariaDB

mariadb-server

mariadb-server

PostgreSQL

postgresql

postgresql-server

NFS

nfs-kernel-server

nfs-utils

FTP

vsftpd

vsftpd

🚀 Autor

Nickson Díaz Mojica

🏆 Licencia

Este proyecto se distribuye bajo la licencia MIT.

🔹 ¡Disfruta de la instalación automática de servidores en Linux! 🔹

