#!/bin/bash
U=$(whoami)
cd /home/$U/yourcat
NT=$(date +%s)
T=$(cat time.txt)
if  [ -e /home/$U/yourcat/time.txt ]; then
    if [ "$NT" -ge "$T" ]; then
       echo "он не счастлив т. к. он хочет кушать" > ecat.txt
       echo "голодный" > ec.txt
       echo "|\   /|
| \__/ |
| 0  0 |
|  /\  |
\_____/" > cat.txt
       cd /home/$U/yourcat
       rm time.txt
    else
       echo "коть не хочет кусять :3"
    fi
fi
cd /home/$U/catgame
./catgame.sh