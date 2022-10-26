#!/bin/bash
if [[ "$EUID" != 0 ]]; then
	echo "Please run this script with super user permission!"
	exit 1
fi

mkdir -p /lib/firmware/iwlwifi.bak
mv /lib/firmware/iwlwifi-Qu-c0-jf-b0-* /lib/firmware/iwlwifi.bak/
cp ./iwlwifi-Qu-c0-jf-b0-48.ucode /lib/firmware/
printf "Now \"dmesg | grep\" iwlwifi and create a ln symlink with the first ucode iwlwifi tried to load with root \"ln /lib/firmware/iwlwifi-Qu-c0-jf-b0-48.ucode /lib/firmware/iwlwifi-Qu-c0-jf-b0-??.ucode\"\n"
