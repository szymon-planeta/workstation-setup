stty -ixon

# History
HISTSIZE=12000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Prompt
autoload -U promptinit
promptinit
setopt prompt_subst

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
bindkey -r "^S"
bindkey -r "^[h"
bindkey -r "^[j"
bindkey -r "^[k"
bindkey -r "^[l"

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

zsh_syntax_file='/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
[ -f "$zsh_syntax_file" ] && source "$zsh_syntax_file"

[ -f ~/.custom_envs.zsh ] && source ~/.custom_envs.zsh
