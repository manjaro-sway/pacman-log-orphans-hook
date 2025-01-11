#!/bin/sh

pkgs="$(pacman -Qtdq)"; 

warn() {
    echo -ne "\033[0;33m$1\033[0m"
}

log() {
    echo -ne "$1"
}

if [[ ! -z "$pkgs" ]]; then 
    log "## The following packages are installed but not required (anymore):\n"
    warn "$pkgs\n"
    log "You can mark them as explicitly installed with "
    warn "'pacman -D --asexplicit <pkg>'"
    log " or remove them all using "
    warn "'pacman -Qtdq | sudo pacman -Rns -'"
fi