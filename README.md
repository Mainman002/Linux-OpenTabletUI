# OpenTabletUI 
(A Godot v2.1.3 app to adjust graphics tablet settings in Linux using xsetwacom commands.)

( Screenshots are at the bottom of this Readme file )


[ Videos / Sites Showing The UI In Action  ]
-

( First Video for the godot bamboo pen settings ui version )
https://www.youtube.com/watch?v=j-o8lzXfHqg&t=0s

( currently this is using Godot 2.1.3 stable )
https://downloads.tuxfamily.org/godotengine/2.1.3/


[ Things To Install Before Running ]
-
libwacom xf86-input-wacom 

(your wacom tablet should work without needing the extra steps bellow after restarting)

(huion tablets will need these too " digimend-kernel-drivers-dkms-git and linux-headers ")

This Guide can help figuring out the proper line of code -> https://github.com/DIGImend/digimend-kernel-drivers

open a terminal and run " lsusb " without quotes to get your tablets ID number then

for huion tablets enter the next few lines of text here -> sudo gedit /etc/X11/xorg.conf.d/50-tablet.conf

Section "InputClass"
    Identifier "Tablet"
    Driver "wacom"
    MatchDevicePath "/dev/input/event*"
    MatchUSBID "<VID>:<PID>"
EndSection

save and reboot, your huion tablet should now work

[ Version Download Links ]
-

[ Linux 32bit Export ]
-
https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/raw/master/Linux%20APP%20Exports/Wacom_Gui_32bit.zip

[ Linux 64bit Export ]
-
https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/raw/master/Linux%20APP%20Exports/Wacom_Gui_64bit.zip

[ Godot_2x Project Files ]
-
 https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/Project%20Files/Project%20Files.zip?raw=true

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

(linux driver workaround for Huion H950p)
-
https://github.com/mhdchehade/pinspiroy-950

(tips on installing linux headers)
-
https://bbs.archlinux.org/viewtopic.php?id=210378

(xsetwacom keyboard keys)
-
https://github.com/lubosz/wacom-utility/blob/master/keymap.txt

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

[x] credits menu holding Johnathan Mueller, Jose VC, and Mrwan Ashraf

[x] express key layout more suited for krita workflow by default


[ Stuff I Want / Need For The Future ]
-
[ ] improve perforamcne and reduce cpu / ram usage by upgrading from godot to electron, javascript, C, C++, etc

[ ] monitor draggable box for faster visual aid on viewport cursor limits

[ ] tablet draggable box for fast and easy limits for pen locations on the tablet surface

[ ] profile settings for fast switchable preferances

[ ] xfce, gnome, kde panel icon right clicking would show a list of features including

(disable tablet, pen pressure slider, show settings gui, quit program)

[ ] either add more tablet compatibility or make other standalone versions to reduce bloat

[ ] express key menu and ability to show / hide the settings ui with a key command 

[ ] color theme switch feature

[ ] gui pen pressure visual feedback bar meter

[ ] setup express keys to launch programs

[ ] apply all settings on boot

[ ]


![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/1.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/2.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/3.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/4.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/5.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/6.png)

![alt text](https://github.com/Mainman002/Wacom-Bamboo-Settings-Gui/blob/master/ScreenShots/7.png)



