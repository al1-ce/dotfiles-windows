#!/bin/bash

# BASH COMMANDS
alias logoff='logout'
alias cls='clear'
alias please='sudo $(history -p !!)'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir='mkdir -pv'
alias srcrc='source ~/.bashrc'

alias neofetch='neofetch --source ~/.dotfiles/.ascii_neofetch --colors 208 7 7 208 7 7 --ascii_colors 208'

alias dhelp='~/.dotfiles/dhelp.exe'
alias gdhelper='~/.dotfiles/gdhelper.exe'

# CONFIRMATIONS
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

# ls
alias la='ls -a'

# hyper config
alias hyper-config='code /c/Users/alice/AppData/Roaming/Hyper/.hyper.js'

alias yasb='python ~/.yasb/yasb/src/main.py'

alias scons='~/scons/scons.bat'
alias msys2='/e/msys64/msys2_shell.cmd -defterm -no-start -msys'

alias godot="/e/alice/YandexDisk/Programms_Res/Godot4xGD/Godot4xGD.exe"

alias jspp='/e/jspp/jsppext.exe'
alias js++=jspp
alias jpp=jspp
alias j++=jspp

alias webdev=webdev.bat
alias flutter=flutter.bat

alias wget=~/.dotfiles/wget.exe

alias makensis.exe="/e/Program Files (x86)/NSIS/makensis.exe"

git-ls () {
	find . -maxdepth 1 -mindepth 1 -type d -exec sh -c "cd {} && git rev-parse --is-inside-work-tree > /dev/null && echo -n '\e[1m' && echo -n {} && echo -n '\e[0m \e[91m' &&  git status --porcelain | awk '/[MD?]+ /{c++} END {print \"M: \", c}' && rm -f statusShort && echo -n '\e[0m'" \;
}

backup () {
    git add .
    git commit -m "Updated: `date +'%Y-%m-%d'`"
    if [[ $# -eq 0 ]]; then
        git push origin master
    else
        git push origin $1
    fi
    
}

alias python-server='python3 -m http.server 8080 --bind 127.0.0.1'
alias node-server='http-server'

clear
# neofetch