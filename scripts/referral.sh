#!/bin/bash
# This script will download and add domains from the rep to whitelist.txt file.
# Project homepage: https://github.com/ijhuang/allowlist
# Licence: https://github.com/ijhuang/allowlist/blob/master/LICENSE
#================================================================================
TICK="[\e[32m ✔ \e[0m]"
PIHOLE_LOCATION="/etc/pihole"
GRAVITY_UPDATE_COMMAND="pihole -w -q"

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -d|--dir) PIHOLE_LOCATION="$2"; shift ;;
        -D|--docker) GRAVITY_UPDATE_COMMAND="docker exec pihole pihole -w -q" ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

echo -e " \e[1m This file contains tracking and adserving domains. Run this script if you use specific service (like Slickdeals and Fatwallet etc.) that require certain adserving domains to be whitelisted. If you don't know what these services are, stay away from this list.  \e[0m"
read -p "Do you want to continue (Y/N)? " -n 1 -r
echo   
if [[ $REPLY =~ ^[Yy]$ ]]
then

	echo -e " \e[1m This script will download and add domains from the repo to whitelist.txt \e[0m"
	sleep 1
	echo -e "\n"

	if [ "$(id -u)" != "0" ] ; then
		echo "This script requires root permissions. Please run this as root!"
		exit 2
	fi


	curl -sS https://raw.githubusercontent.com/ijhuang/allowlist/master/domains/referral-sites.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
	echo -e " ${TICK} \e[32m Adding domains to whitelist... \e[0m"
	sleep 0.5
	echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"

	mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.old && cat "${PIHOLE_LOCATION}"/whitelist.txt.old | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

	wait
	echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while \e[0m"
	${GRAVITY_UPDATE_COMMAND} $(cat "${PIHOLE_LOCATION}"/whitelist.txt | xargs) > /dev/null
	wait
	echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
	echo -e " ${TICK} \e[32m Done! \e[0m"

	
	echo -e " \e[1m  Star me on GitHub, https://github.com/ijhuang/allowlist \e[0m"
	echo -e " \e[1m  Happy AdBlocking :)\e[0m"
	echo -e "\n\n"

fi
