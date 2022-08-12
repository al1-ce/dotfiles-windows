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

# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc