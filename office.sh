#!/bin/bash

#Installing Burmese fonts

#Making directory ~/.fonts
sudo mkdir ~/.fonts && cd ~/.fonts

#Pulling fonts from mcf.org
curl -O www.unicodetoday.org/downloads/Pyidaungsu-2.5.2_Regular.ttf

#Installing the keyboard layout guide
cd Desktop && curl -O http://www.unicodetoday.org/pyidaungsu_mm.png && cd

#Installing Libre Office
sudo apt install libreoffice

#Installing zathura
sudo apt install zathura && sudo apt install zathura-pdf-mupdf

#Changing the keyboard layout with setxkbmap (untested)
#setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,th


