# Yisus7u7 <dev.yisus@hotmail.com>

# Manjaro credits
# Maintainer: Philip Müller <philm[at]manjaro[dot]org>
# Maintainer: Bernhard Landauer <bernhard[at]manjaro[dot]org>

# Arch credits:
# Pierre Schmitz <pierre@archlinux.de>

pkgname=blackjaro-keyring
pkgver=2023.1
pkgrel=2
pkgdesc='Blackjaro Linux GPG keyring'
arch=('any')
url='https://blackjarolinux.github.io/'
license=('GPL')
install="${pkgname}.install"
source=('Makefile'
        'blackjaro.gpg'
        'blackjaro-revoked'
        'blackjaro-trusted')
sha256sums=('94c6da146f4dc4588f959491ae24835c14f70e2ba065de8ce65fcd98bbaacebd'
            '10a96919a091684c7ba513922326f211db03dd665c6fbed826aa78e58ba9a9ae'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'db07f1384aa796dd66114c5b06d829b0ffb200ae1a8d90ba476a647d0c2b5a71')

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
