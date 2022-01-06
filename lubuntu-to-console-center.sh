#! /bin/bash




# Actualizar repositorios
sudo apt update




# Instalar Programas

#wine
wget -nv https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./' -y
sudo apt-get update
sudo apt install --install-recommends winehq-stable -y

#q4wine
sudo apt install q4wine -y

#winetricks
sudo apt install winetricks -y

#lutris
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update
sudo apt install lutris -y

#playonlinux
sudo apt install playonlinux -y

#steam
sudo apt install steam -y

# Retroarch
sudo add-apt-repository ppa:libretro/stable -y
sudo apt-get update
sudo apt install retroarch -y

# Kodi v19.2 - Matrix
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt update
sudo apt install kodi -y




# Kodi config

# Addons

## Pluto TV
### Repositorio: Repositorios Oficiales
#### instalacion: addons de videos > Pluto TV

## Konectas > Balandro
### Repositorio: http://konectas.es/repo/
#### instalacion: %Nombre_de_la_fuente% > ADDONS CON REPOSITORIO > BALANDRO > repository.balandro-1.0.3.zip

## Youtube (Sin API)
## Addond Cristal Azul
## url: https://mundokodi.com/addon-cristal-azul-en-kodi/
### Repositorio: https://fuentekodileia.github.io/
#### instalacion: %Nombre_de_la_fuente% > addons-todo-en-uno > plugin.video.cristalazul-x.x.x.zip




# Lutris config




# Iniciamos Lutris con el sistema
# Manual
# menu > Preferencias > Aplicaciones predeterminadas para LXSession > Inicio automatico > Aplicaciones autoiniciadas manuales > kodi
# Automatica
cd
cd .config
cd lxsession
cd Lubuntu
echo 'lutris %U' > autostart




# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lubuntu* -y
sudo apt-get autoremove --purge -y
# En caso que te hallas quedado sin servidor grafico
sudo apt-get install xorg -y


# Almacenamos los paquetes del escritorio de Lubuntu para hacer Configuraciones mas Adelante
sudo apt-get install lubuntu-desktop --download-only -y


# Reiniciamos
# reboot




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
