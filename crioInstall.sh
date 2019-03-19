if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

cp build/libNiFpgaHelper.so.2018.0 /usr/local/lib/.
ln -s libNiFpgaHelper.so.2018.0 /usr/local/lib/libNiFpgaHelper.so
