#!/bin/bash

# DISABLING FKN GAOMON TOUCH STRIP; TURN OFF AND RUN xinput list TO SEE WHERE IT IS NOW IF IT ISNT WORKING
# xinput disable 9

# Lite setup
alias lite='/e/alice/YandexDisk/Programms_Res/lite/lite.exe'
alias litexl='/e/alice/YandexDisk/Programms_Res/lite-xl/lite-xl.exe'

alias vi='vim'
# NODEJS setup
# alias node='~/.bin/node/node.exe'
# alias corepack='~/.bin/node/corepack'
# alias npm='~/.bin/node/npm'
# alias npx='~/.bin/node/npx'
# alias yarn='~/.bin/node/yarn'

# Nodejs modules

# lite () {
#         [[ $# -eq 0 ]] && /e/alice/YandexDisk/Programms_Res/lite-xl/lite-xl.exe & && return 0
#
#         /e/alice/YandexDisk/Programms_Res/lite-xl/lite-xl.exe $1 &
# }

# BASH COMMANDS
alias logoff='logout'
alias cls='clear' #  && neofetch '
alias please='sudo $(history -p !!)'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir='mkdir -pv'
alias srcrc='source ~/.bashrc'

# CONFIRMATIONS
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

# EXA/LS
# alias ls='exa'
alias l='ls -l'
alias lf='ls -lF'
alias la='ls -a'
alias ll='ls -aghl'

# APPS
# cli
#alias neofetch='neofetch --source ~/.dotfiles/.ascii_neofetch'
alias neofetch='neofetch --source ~/.dotfiles/.ascii_neofetch --colors 208 7 7 208 7 7 --ascii_colors 208'
# alias calendar='ncal -yMb'
# alias doomsday='~/.dotfiles/doomsday-clock'

git-ls () {
	find . -maxdepth 1 -mindepth 1 -type d -exec sh -c "cd {} && git rev-parse --is-inside-work-tree > /dev/null && echo -n '/e[1m' && echo -n {} && echo -n '/e[0m /e[91m' &&  git status --porcelain | awk '/[MD?]+ /{c++} END {print /"M: /", c}' && rm -f statusShort && echo -n '/e[0m'" /;
}
# sys
# alias nemo='nohup nemo &'
# alias kate='nohup kate &'
# alias cool-retro-term='nohup cool-retro-term &'
# alias gedit='nohup gedit &'
# personal fav
# alias blanket='nohup blanket &'
# gnome
# alias kvantummanager='nohup kvantummanager &'
# alias store='sudo synaptic'
# alias gnome-tweaks='nohup gnome-tweaks &'
# alias gnome-control-center='nohup gnome-control-center &'
# ui creators
# alias glade='nohup glade &'
# alias qtcreator='nohup qtcreator &'

# ALIASES
# alias alias-update='source ~/.dotfiles/.bash_aliases'
# alias alias-edit='vim ~/.dotfiles/.bash_aliases'

# PROGS
alias wttr='curl wttr.in/Moscow'
alias mapscii='telnet mapscii.me'
# alias remind='cat ~/.dotfiles/.command-reminder'
# alias clock='tty-clock -s -c -C 7'
# alias cmatrix='cmatrix -C blue'
# alias enter-the-shell='mpv --quiet -vo=caca .dotfiles/gits-op.mp4'
# alias qml-launcher='nohup ~/.apps/qml-launcher/build/qml-launcher &'

# SERVERS
alias server-start='python3 -m http.server 8080 --bind 127.0.0.1'

run-quiet () {
        [[ $# -eq 0 ]] && echo "usage: run_quiet [program] [program_arg] [output_file]" && return 0

        nohup $1 -u $2 > $3 &
}

psearch () {
        [[ $# -eq 0 ]] && echo "Please supply process name" && return 0
        ps axu | grep -- "$1"
}

# rotate-screen () {
    # [[ $# -eq 0 ]] && printf "usage: rotate-screen [screen] [orientation]/nscreen: left, center, right/norientation: normal, left, right, inverted/n" && return 0
    # [[ "$1" == "left" ]] && xrandr --output DP-1 --rotate $2 && return 0
    # [[ "$1" == "center" ]] && xrandr --output DP-2 --rotate $2 && return 0
    # [[ "$1" == "right" ]] && xrandr --output HDMI-0 --rotate $2 && return 0
    # echo "Screen is incorrect"
# }

# edex () {
# 	cd ~/apps
# 	./eDEX-UI-Linux-x86_64.AppImage &
# }

#jp2a --colors --color-depth=8 --chars=" .,:;!-~=+÷*JS?#%@AX" --width="${PV_WIDTH}" "${FILE_PATH}" && exit 4
#jp2a --colors --color-depth=8 --chars=" ░▒▓█" --width="${PV_WIDTH}" "${FILE_PATH}" && exit 4

# EXPORTS
export EDITOR=vim
export HOMEBREW_NO_ENV_HINTS=TRUE

# STARTUP SCRIPT

cls

