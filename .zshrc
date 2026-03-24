# prompt styling
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Default Editor
export VISUAL=vim
export EDITOR="$VISUAL"

# History size
export HISTSIZE=10000

# Aliases
alias reload='source ~/.zshrc'
alias ..='cd ..'
alias ll='ls -alF'
alias gs='git status'
alias gc='git commit -m'
alias now='TZ=America/Los_Angeles date "+%Y-%m-%d %H:%M:%S %Z"; TZ=America/New_York date "+%Y-%m-%d %H:%M:%S %Z"; date -u "+%Y-%m-%d %H:%M:%S UTC"'

fortune | cowsay -r
