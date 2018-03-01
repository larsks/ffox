prefix = /usr
bindir = $(prefix)/bin

INSTALL = install

all:

install: all
	$(INSTALL) -m 755 sfox $(bindir)
