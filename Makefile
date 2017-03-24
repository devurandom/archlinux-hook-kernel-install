install:
	install --mode=0755 kernel-install-latest /usr/local/bin
	install --mode=0644 99-kernel-install.hook /etc/pacman.d/hooks
