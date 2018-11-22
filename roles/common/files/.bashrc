# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
PS1='$(gbt $?)'
