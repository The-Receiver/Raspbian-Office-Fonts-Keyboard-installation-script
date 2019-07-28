# Raspbian-Office-Fonts-Keyboard-installation-script
Installs libreoffice writer and pyidaungsu fonts via apt. Changes keyboard layouts to US/myanmar via setxkbmap.

Installing and running (not using git clone):





Todo: 
-extend script to install pyidaungsu keyboard layout.
-add comments to futureproof code



If the script fails:

Installing Burmese fonts:
1) Go to https://mcf.org.mm/pyidaungsu-font.html and install the 4 fonts under 
Font File -- Windows 10, 8 and MS Office 2013 and above. Move them to the Downloads folder.

2) Open up a terminal (ctrl + alt + t), type the following commands:

sudo mkdir ~/.font 
cd Downloads
sudo mv *.ttf ~/.fonts
fc-cache -f -v

Now run
fc-list | grep Pyidaungsu
if it returns nothing, this process has failed. If it has returned something, go on LibreOffice, and check that
the font Pyidaungsu is there by searching for the font on the font tab.
