# Custom Git Prompt with HH:MM:SS, Path, and Branch
get_git_branch() {
    git rev-parse --abbrev-ref HEAD 2>/dev/null
}

PS1='\[\e[32m\]\t\[\e[0m\] \[\e[36m\]\w\[\e[0m\] \[\e[31m\]$(get_git_branch)\[\e[0m\]$ '
