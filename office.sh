#!/bin/bash

#Installing Burmese fonts

#Download fonts from the Myanmar Computer Federation website
function download_fonts {
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Regular.ttf
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Bold.ttf
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Numbers.ttf
}

#Make directory ~/.fonts, downloading fonts, then update font cache with fc-cache
echo "Installing fonts"
sudo mkdir ~/.fonts
cd ~/.fonts && download_fonts && fc-cache -f -v

#Install the keyboard layout guide to the desktop
echo "Installing keyboard layout guide."
cd Desktop && curl -O http://www.unicodetoday.org/pyidaungsu_mm.png

#Install Libre Office
echo "Installing Libre Office"
sudo apt install libreoffice

#Installing Zathura pdf reader
echo "Installing Zathura"
sudo apt install zathura && sudo apt install zathura-pdf-mupdf

#Changing the keyboard layout with setxkbmap (untested)
#setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,th


