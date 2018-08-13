# Wacom-Bamboo-Settings-Gui
A Wacom Bamboo Pen Tablet Settings UI for Linux

( Screenshots are at the bottom of this Readme file )


[ Videos / Sites Showing The UI In Action  ]
-

( First Video for the godot bamboo pen settings ui version )
https://www.youtube.com/watch?v=j-o8lzXfHqg&t=0s


[ Things To Install Before Running ]
-
Arch Linux = sudo pacman -S libwacom xf86-input-wacom

Ubuntu / Debian = sudo apt install libwacom xf86-input-wacom

also make sure to restart after installing so your tablet can be recognised by the ui

( currently this is using Godot 2.1.3 stable )

https://downloads.tuxfamily.org/godotengine/2.1.3/

[ Version Download Links ]
-

[ Linux 32bit Export ]
-
https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/raw/master/Linux%20APP%20Exports/Wacom_Gui_32bit.zip

[ Linux 64bit Export ]
-
https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/raw/master/Linux%20APP%20Exports/Wacom_Gui_64bit.zip

[ Helpful Links ]
-

(a list of wacom commands I found to be useful) https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/xsetwacom%20Commands.txt

(Arch Wiki)
-
https://wiki.archlinux.org/index.php/wacom_tablet

(Tablet Configuration 1)
-
https://github.com/linuxwacom/xf86-input-wacom/wiki/Tablet-Configuration-1:-xsetwacom-and-xorg.conf

(Tablet Button Example Scripts)
-
https://github.com/linuxwacom/xf86-input-wacom/wiki/Tablet-Configuration-2:-Example-scripts

(Possibly Useful Later Huion Tablet Setup Video)
-
https://www.youtube.com/watch?v=ymZaexs3rac&t=0s

(Bamboo Pen And Touch)
-
https://ubuntuforums.org/showthread.php?t=1515562

[ Finished Features ]
-
[x] a tabbed based ui menu including [ Setup, Pen_Settings, Tablet_Settings, Monitor_Settings, Credits ]

[x] get tablet info and display that to a text label

[x] allow users to change device id number to match their stylus

[x] Pen Pressure Slider controlling the 3rd number in the curve string

[x] Pen button mapping for the 2 side buttons

[x] a help window that displays possible button strings to help with changeing the pen button mapping 

[x] change pen mode between Absolute (Pen Mode) and Relative (Mouse Mode)

[x] change tablet orientation right handded (none), left handded (half), vertical up (cw), and vertical down (ccw)

[x] detect monitor resolutions and display that to a text label

[x] set monitor bounds for the pen cursor

[x] credits menu holding Jose VC and Johnathan Mueller


[ Stuff I Want / Need For The Future ]
-
[ ] improve perforamcne and reduce cpu / ram usage by upgrading from godot to electron, javascript, C, C++, etc

[ ] monitor draggable box for faster visual aid on viweport cursor limits

[ ] tablet draggable box for fast and easy limits for pen locations on the tablet surface

[ ] profile settings for fast switchable preferances

[ ] xfce, gnome, kde panel icon right clicking would show a list of features including

(disable tablet, pen pressure slider, show settings gui, quit program)

[ ] either add more tablet compatibility or make other standalone versions to reduce bloat

[ ] express key menu and ability to show / hide the settings ui with a key command 

[ ] color theme switch feature

[ ] gui pen pressure visual feedback bar meter

[ ] setup express keys to launch programs

[ ]


![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/1.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/2.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/3.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/4.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/5.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/6.png)

