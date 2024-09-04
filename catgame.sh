#!/bin/bash
U=$(whoami)
cd /home/$U/yourcat
EC=$(cat ecat.txt)
C=$(cat cat.txt)
N=$(cat nameofcat.txt)
E=$(cat ec.txt)
G=$(cat gameforcat.txt)
kdialog --yesno "$C кличка котёнка = $N
$E
$EC
$G игруш(ка/ки/ек) " --title "catgame: главный экран" --yes-label "меню" --no-label "выйти"
if [ $? = 0 ]; then
    cd /home/$U/catgame
    ./menucat.sh
else
    echo "окей"
fi
