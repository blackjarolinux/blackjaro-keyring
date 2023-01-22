V=20220514

PREFIX = /usr/local

update:
	gpg --recv-keys $(cat blackjaro-trusted | cut -d: -f1) $(cat blackjaro-revoked)
	gpg --export --armor $(cat blackjaro-trusted | cut -d: -f1) $(cat blackjaro-revoked) > blackjaro.gpg

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 blackjaro{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/blackjaro{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
