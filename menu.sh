#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by afiniel-tech for yiimpool use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Yiimpool v1.0.3.3" --menu "Choose one" -1 60 16 \
' ' "- YiiMP Server Install -" \
1 "YiiMP Single Server" \
' ' "- Daemon Wallet Builder -" \
2 "Daemonbuilder" \
3 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi


if [ $RESULT = 1 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_coin.sh;
fi

if [ $RESULT = 3 ]
then
clear;
exit;
fi
