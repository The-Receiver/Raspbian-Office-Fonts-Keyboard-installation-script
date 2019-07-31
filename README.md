# Libreoffice, Pyidaungsu font, installer for the raspberry pi. 

## Written by Eric McDowell 

# Running the program

First, open the terminal with `ctrl + alt + t `.

Then, install the office.sh file by typing the command
```
 curl -o ~/office.sh https://raw.githubusercontent.com/The-Receiver/Raspbian-Office-Fonts-Keyboard-installation-script/master/office.sh
 ```

Then, type
```
sudo chmod +x office.sh
```
to make the program executable.


To run the program, enter the command
```
./office.sh
```

Follow the steps below to set up the Burmese keyboard layout:

In order for Burmese writing to show up you must set up a Burmese keyboard layout alongside the American one.
To do this, follow the instructions in this tutorial: [No tutorial yet]


## If the fonts fail to install:

1) Go to https://mcf.org.mm/pyidaungsu-font.html and install the 4 fonts under the section
Font File -- Windows 10, 8 and MS Office 2013 and above. Move them to the Downloads folder.

2) Open up a terminal (ctrl + alt + t), type the following commands:

```
sudo mkdir ~/.font 
cd Downloads
sudo mv *.ttf ~/.fonts
fc-cache -f -v
```

To check if the faunts have installed, run
```
fc-list | grep Pyidaungsu
```
if the command returns nothing, this process has failed. If it returns multiple lines containing the word Pyidaungsu, it
has succeeded. Go to LibreOffice, and check that
the font Pyidaungsu is there by searching for the font on the font tab.

