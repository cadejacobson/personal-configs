# Custom Git Prompt with HH:MM:SS, Path, and Branch
get_git_branch() {
    git rev-parse --abbrev-ref HEAD 2>/dev/null
}

PS1='\[\e[32m\]\t\[\e[0m\] \[\e[36m\]\w\[\e[0m\] \[\e[31m\]$(get_git_branch)\[\e[0m\]$ '

export VISUAL=vim
export EDITOR="$VISUAL"
export HISTSIZE=10000

alias reload='source ~/.bashrc'
alias ..='cd ..'
alias ll='ls -alF'
alias gs='git status'
alias gc='git commit -m'

fortune | cowsay -r
