#Raspbian-Office-Fonts-Keyboard-installation-script
Installs libreoffice writer and pyidaungsu fonts via apt. Changes keyboard layouts to US/myanmar via setxkbmap.

#Running the program

Once office.sh is in the home folder, open a terminal with Ctrl + alt + t, and enter these two commands to run the program:
chmod +x office.sh
./office.sh

If the script fails and anything needs to be installed manually, follow the instructions below:

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
if the command returns nothing, this process has failed. If it returns multiple lines containing the word Pyidaungsu, it
has succeeded. Go to LibreOffice, and check that
the font Pyidaungsu is there by searching for the font on the font tab.
