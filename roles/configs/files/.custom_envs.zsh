# fzf
export FZF_DEFAULT_OPTS="--preview '(bat --style=numbers --color=always {} || cat {}) 2>/dev/null | head -500'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# gbt
PROMPT='$(gbt $?)'
export GBT_CARS='Status, Dir, Git, Sign'
export GBT_CAR_SIGN_SYMBOL_FM='none'
export GBT_CAR_SIGN_USER_FM='none'
export GBT_CAR_SIGN_ADMIN_FM='none'
export GBT_CAR_DIR_DEPTH='2'
export GBT__HOME='/usr/share/gbt'
source "$GBT__HOME/sources/prompt_forwarding/local"

export EDITOR='vim'
