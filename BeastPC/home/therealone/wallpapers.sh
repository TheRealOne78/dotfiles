if [ ! -f /usr/bin/git ]; then
	printf "[e] git is not installed."
	exit 1
fi

git clone ssh://git@therealone78.ddns.net/~/wallpapers.git wallpapers
if [ ! $? -eq 0 ]; then
	printf "[e] Something went horribly wrong!\n"
	exit 1
fi
printf "[i] Done.\n"
