install:
	mkdir -p /usr/share/bootini
	install boot.ini /usr/share/bootini
	install boot.ini.default /usr/share/bootini
	install bootini-persistence.pl /usr/share/bootini
	rm -fr /usr/bin/bootini
	ln -s /usr/share/bootini/bootini-persistence.pl /usr/bin/bootini
	install 10-odroid.rules /etc/udev/rules.d
#	install blacklist-spi.conf /etc/modprobe.d
	install -m 0664 odroid-tweaks.service /etc/systemd/system/
	install -m 0755 odroid-tweaks /bin
	