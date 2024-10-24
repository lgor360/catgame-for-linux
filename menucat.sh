#!/bin/bash
U=$(whoami)
cd /home/$U/yourcat
EC=$(cat ecat.txt)
C=$(cat cat.txt)
N=$(cat nameofcat.txt)
E=$(cat ec.txt)
G=$(cat gameforcat.txt)
MENU=$(kdialog --menu "что вы хотите сделать?" --title "catgame: меню" \
    1 "покормить котёнка" \
    2 "купить еду" \
    3 "дать котёнку игрушку" \
    4 "об игре")

case $MENU in
    1)
           if [ -f foodforcat.txt ]
           then
           cd /home/$U/yourcat
           T=$(date --date="4 hour" +%s)
           echo "$T" > time.txt
           kdialog --msgbox "вы покормили котёнка!" --title "catgame: еда"
           echo "|\   /|
| \__/ |
| 0  0 |
|  VV  |
\_____/" > cat.txt
           echo "не голодный" > ec.txt
           echo "он счастлив т. к. он покушал" > ecat.txt
           cd /home/$U/yourcat
           rm foodforcat.txt
           cd /home/$U/catgame
           ./catgame.sh
           else
           kdialog --error "у тебя нет еды..." --title "catgame: о нет!"
           cd /home/$U/catgame
           ./menucat.sh
           fi
    ;;
    2)
           kdialog --msgbox "вы купили еду!" --title "catgame: покупка еды"
           cd /home/$U/yourcat
           touch foodforcat.txt
           cd /home/$U/catgame
           ./menucat.sh
    ;;
    3)
           G=$(((G+1)))
           cd /home/$U/yourcat
           echo "$G" > gameforcat.txt
           kdialog --msgbox "теперь у котёнка $G игрушк(а/и/шек)! " --title "catgame: игрушка"
           cd /home/$U/catgame
           ./menucat.sh
    ;;
    4)
           kdialog --msgbox "catgame - тамогочи где ты ухаживаешь за своим котом.
игра сделана в России в 2024-м году школьником. его зовут Игорь и на момент создания игры он уже был в 5-м классе. так же у него есть канал Игорь360.

всё :D" --title "catgame: об игре"
           cd /home/$U/catgame
           ./menucat.sh
    ;;
    *)
           cd /home/$U/catgame
           ./catgame.sh
    ;;
esac