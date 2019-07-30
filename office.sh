#!/bin/bash

#Installing Burmese fonts

#Download fonts from the Myanmar Computer Federation website
function download_fonts {
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Regular.ttf
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Bold.ttf
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Numbers.ttf
}

#Make directory ~/.fonts, download fonts, then update font cache with fc-cache
printf "Installing fonts \n\n"
sleep 1
sudo mkdir ~/.fonts
cd ~/.fonts && download_fonts && fc-cache -f -v

#Install the keyboard layout guide to the desktop
printf "Installing keyboard layout guide. \n\n"
sleep 1
cd Desktop && curl -O http://www.unicodetoday.org/pyidaungsu_mm.png

#Install Libre Office
printf "Installing Libre Office \n\n"
sleep 1
sudo apt install -y libreoffice

#Installing Zathura pdf reader
printf "Installing Zathura \n\n"
sleep 1
sudo apt install -y zathura && sudo apt install zathura-pdf-mupdf

#Installing screenfetch
printf "Installing screenfetch \n\n"
sleep 1
sudo apt install -y screenfetch
