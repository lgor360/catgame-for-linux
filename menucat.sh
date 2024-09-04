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
    3 "дать котёнку игрушку")

case $MENU in
    1)
           if [ -f foodforcat.txt ]
           then
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
           ./catgame.sh
           fi
    ;;
    2)
           kdialog --msgbox "вы купили еду!" --title "catgame: покупка еды"
           cd /home/$U/yourcat
           touch foodforcat.txt
           cd /home/$U/catgame
           ./catgame.sh
    ;;
    3)
           G=$(((G+1)))
           cd /home/$U/yourcat
           echo "$G" > gameforcat.txt
           kdialog --msgbox "теперь у котёнка $G игрушк(а/и/шек)! " --title "catgame: игрушка"
           cd /home/$U/catgame
           ./catgame.sh
    ;;
    *)
           cd /home/$U/catgame
           ./catgame.sh
    ;;
esac