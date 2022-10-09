export GOPATH=~/go
export GOROOT=/e/Go
export USER=alice

function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $?\
        -modules "venv,host,ssh,cwd,perms,git,hg,jobs,exit,root" \
	    -cwd-max-depth 1 -git-mode 'simple')"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

source ~/.dotfiles/.bash_aliases

# Add SuDo-like command to windows shell
alias gsudo='"/c/Program Files/gsudo/gsudo.exe"'
alias sudo='gsudo'
alias please='gsudo !!'

# prefents git bash from terminating program on sigint
# trap '' SIGINT

# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
# echo 'set completion-ignore-case On' >> ~/.inputrc

export HAXEPATH="/e/HaxeToolkit/haxe"
export NEKO_INSTPATH="/e/HaxeToolkit/neko"

export CARGOPATH=~/.cargo/bin
export CMAKEPATH="/e/Program Files/CMake/bin"

export LDC2PATH=/e/dldc2/bin

export DARTPATH=/e/dart-sdk/bin
export DARTPUBPATH=/c/Users/alice/Appdata/Local/Pub/Cache/bin
export FLUTTERPATH=/e/flutter/bin

export PATH=$HAXEPATH:$NEKO_INSTPATH:$PATH

export PATH=$CARGOPATH:$PATH
export PATH=$CMAKEPATH:$PATH

export PATH=$LDC2PATH:$PATH

export PATH=$DARTPATH:$DARTPUBPATH:$FLUTTERPATH:$PATH

# Set for no title
echo -en "\033]0;⠀\a"

# Set for string title
# echo -en "\033]0;Bash\a"

# Set for default title
# echo -en "\033]0;\a"