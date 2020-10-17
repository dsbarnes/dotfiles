# Basics
alias ls='ls -GFh'          # better ls
alias vi='nvim'             # Neovim instead of vi
alias cat='bat'             # color for cat
alias poe='poetry'          # funny Poetry command (python)

# Git:
alias git-icons="git-prompt-icons.sh"
alias ga='git add'         # b/c I use git too often not to
alias gc='git commit -m'
alias gcl='git clone'
alias gpl='git pull origin'
alias gpo='git push origin'
alias gb='git branch -a'
alias gdiff='git diff'
alias gstat='git status'
alias gstash='git stash'
alias glog='git log'
alias grao='git remote add origin'
alias gr='git remote -v'
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# OhShitGit:
alias oshit-c="git add .; git commit --amend --no-edit"
alias oshit-m="git commit --amend"
alias oshit-i="git rm -r --cached .; ga .; gc \"Cleaning ignored files\""


# Python / Django:
alias python='python3'
# alias djp='django-admin startproject'
# alias dja='python manage.py startapp'
# alias djsu='python manage.py createsuperuser'
# alias djmm='python manage.py makemigrations'
# alias djm='python manage.py migrate'
# alias djs='python manage.py runserver'
