# Check for root
if [[ "$EUID" != 0 ]]; then
	echo "[e] Please run this script with super user permission!"
	exit $EUID
fi

printf "[i] Patching grub..."
mv /etc/default/grub /etc/default/grub.bak
if [ ! $? -eq 0 ]; then
	printf "\n[e] Something went wrong!"
	exit 1
fi
cp ./grub /etc/default/grub
if [ ! $? -eq 0 ]; then
	printf "\n[e] Something went wrong!"
	exit 1
fi
printf "\n[i] Done!"
