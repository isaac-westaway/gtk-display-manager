all: clean display-manager

display-manager: display-manager.c pam.c
	gcc -Wall -o $@ $^ `pkg-config --cflags --libs gtk+-3.0` -lpam -lpam_misc
	cp display-manager /usr/bin
	cp gui.ui /usr/bin

.PHONY: clean

clean:
	rm -f display-manager
