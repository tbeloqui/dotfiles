export ZSH="/home/fr30n/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias pexip=/usr/lib/pexip-infinity-connect_linux-x64/pexip-infinity-connect
export EDITOR=vim

export GDK_SCALE=1
export GDK_DPI_SCALE=0.5
export QT_FONT_DPI=96

openssldec() {
    mkdir -p .bak
    cp $1 .bak/$1
    openssl aes-256-cbc -d -in .bak/$1 -out $1 -md md5 -pass pass:$2
}
