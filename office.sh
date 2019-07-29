#!/bin/bash

#Installing Burmese fonts

#Download fonts from the Myanmar Computer Federation website
function download_fonts {
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Regular.ttf
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Bold.ttf
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Numbers.ttf
}

#Make directory ~/.fonts, downloading fonts, then update font cache with fc-cache
sudo mkdir ~/.fonts && cd ~/.fonts && downloadfonts && fc-cache -f -v

#Install the keyboard layout guide to the desktop
cd Desktop && curl -O http://www.unicodetoday.org/pyidaungsu_mm.png

#Install Libre Office
sudo apt install libreoffice

#Installing Zathura pdf reader
sudo apt install zathura && sudo apt install zathura-pdf-mupdf

#Changing the keyboard layout with setxkbmap (untested)
#setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,th


