#!/usr/bin/env bash
if ! command -v ssh > /dev/null; then
    echo "Error: openssh is not installed. Please install it before running this script."
    exit 1
fi

echo -e "\e[1;32m"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo " ____  ____  ____   ___  ____  ____  ____   __"
echo "||-C ||-Y ||-B ||-E ||-R-- --||-W |||-O ||-R ||-M \\ "
echo "||-O__||-S__||-I__||-N__||-T-- ---||-T__||-O__||-O__||-L_\\"
echo "|\__/|\__/|\__/||/__/|\__/|\__/|\__/|\__/|\__/"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo -e "\e[0m"
echo "Author:  Tech Raj & CYBER-WORM"
echo "Github: Cyber-Mentor & CYBER-WORM"
echo "Telegram channel: TrickyAbhiRaj"
read -p "Enter your Telegram username: " telegram_username
sed -i "0,/telegram_username/s//${telegram_username}/" port.sh
ssh -R ${telegram_username}:80:localhost:8999 -o GatewayPorts=no serveo.net
