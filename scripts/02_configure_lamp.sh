#!/usr/bin/env bash
# scripts/02_configure_lamp.sh
# Configure LAMP stack services and test page
set -xeu

# Cambiar propietarios y permisos de forma limpia
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Copiar el archivo usando la ruta compartida real de Vagrant y llamándolo info.php
cp -vf /vagrant/files/info.php /var/www/html/info.php

# Activar los servicios
systemctl enable --now apache2
systemctl enable --now mariadb
