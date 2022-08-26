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

export PATH=~/.cargo/bin:$PATH
# Set for no title
echo -en "\033]0;⠀\a"

# Set for string title
# echo -en "\033]0;Bash\a"

# Set for default title
# echo -en "\033]0;\a"