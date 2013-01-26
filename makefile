PREFIX?=/usr/local
INSTALLDIR?=$(DESTDIR)$(PREFIX)

all: install

install:
	install -Dm755 sunrose.sh "$(INSTALLDIR)/bin/sunrose"
	install -Dm644 readme.mkd "$(INSTALLDIR)/share/doc/sunrose/readme.mkd"
	install -Dm644 license.mkd "$(INSTALLDIR)/share/licenses/sunrose/sunrose.txt"

	install -d "$(INSTALLDIR)/share/doc/sunrose/examples/config"
	install -Dm644 examples/config/* "$(INSTALLDIR)/share/doc/sunrose/examples/config"

	install -d "$(INSTALLDIR)/etc/sunrose.d"
	install -Dm755 sunrose.d/* "$(INSTALLDIR)/etc/sunrose.d"

uninstall:
	rm "$(INSTALLDIR)/bin/sunrose"
	rm -rf "$(INSTALLDIR)/share/doc/sunrose"
	rm -rf "$(INSTALLDIR)/share/licenses/sunrose"
	rm -rf "$(INSTALLDIR)/etc/sunrose.d"

.PHONY: all install uninstall
