#Libreoffice, Pyidaungsu font, Pyidaungsu keyboard layout installer. 

[ Running the program ]

First, open the terminal (press ctrl + alt + t ).

Then, install the office.sh file by typing ```
 curl -o ~/office.sh https://raw.githubusercontent.com/The-Receiver/Raspbian-Office-Fonts-Keyboard-installation-script/master/office.sh
```

Then,type
sudo chmod +x office.sh

and then run the program using
./office.sh

Follow the steps below to set up Burmese keyboard:

In order for Burmese writing to show up you must set up a Burmese keyboard layout alongside the American one.
To do this, follow the instructions in this tutorial: [No tutorial yet]


If the script fails and anything needs to be installed manually, follow the instructions below:

Installing Burmese fonts manually:

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

