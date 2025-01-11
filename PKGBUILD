pkgname=pacman-log-orphans-hook
pkgver=1.1
pkgrel=4
pkgdesc='hook to check whether there are any packages marked as unrequired (orphans) via pacman -Qttdq after every pacman run'
arch=(any)
depends=()
source=(
    'log-orphans.hook'
    'check-orphans.sh'
)
sha256sums=(
    '8f86d718008d66aab4cd1e3bf0e020591cd4c45df1993a9be49fc0c1cc972a0b'
    '112b82db2098dee03127b1e2e397f91199fb98a81c876c2d85495bcf73e023ec'
)

package() {
    install -Dm0644 -t "$pkgdir/usr/share/libalpm/hooks/" ${source[0]}
    install -Dm0755 -t "$pkgdir/usr/share/bin/" ${source[1]}
}
