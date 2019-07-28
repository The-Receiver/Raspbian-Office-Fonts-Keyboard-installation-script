#!/bin/bash

#Installing Burmese fonts
#Package found at: https://salsa.debian.org/kokoye2007-guest/fonts-myanmar

sudo add-apt-repository -y ppa:kokoye2007/ppa
sudo apt update

sudo apt install ttf-myanmar-fonts-myanmar3
sudo apt install ttf-myanmar-fonts-myanmarcensus
sudo apt install ttf-myanmar-fonts-pyidaungsu

#Installing Libre Office
sudo apt install libreoffice

#Changing the keyboard layout with setxkbmap (untested)
#setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,th




