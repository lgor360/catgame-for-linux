#!/bin/bash
A=$(pwd)
kdialog --passivepopup " звуки ветра " "5"
sleep 1
kdialog --passivepopup " мяу " "1"
sleep 1
kdialog --msgbox "ты открыл дверь и увидел коробку с котёнком! ты взял его к себе."
sleep 2
N=$(kdialog --inputbox "как назовёшь котёнка?")
kdialog --msgbox "$N? хорошая кличка."
U=$(whoami)
kdialog --msgbox "кста твой ник-$U"
cd /home/$U/
mkdir yourcat
cd yourcat
kdialog --passivepopup "создание файлов кота в папке yourcat..." "5"
echo "$N" > nameofcat.txt
echo "он не счастлив т. к. он хочет кушать" > ecat.txt
echo "голодный" > ec.txt
touch eatcat.txt
echo "0" > gameforcat.txt
echo "|\   /|
| \__/ |
| 0  0 |
|  /\  |
\_____/" > cat.txt
cd $A
mv catwanteat.sh /home/igor/.config/autostart
cd /home/$U/catgame
./catgame.sh
