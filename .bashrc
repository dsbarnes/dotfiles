# ********** ********** ********** **********
# **********      Basic Setup      **********
# ********** ********** ********** **********

# Turn on colors
export CLICOLOR=1
# Default editor
export EDITOR=/usr/local/bin/nvim
# Shut up zsh message (OSX Catalina):
export BASH_SILENCE_DEPRECATION_WARNING=1


# ********** ********** ********** **********
# **********    iTerm Settings     **********
# ********** ********** ********** **********

# iTerm2 Shell integration:
test -e "${HOME}/.iterm2_shell_integration.bash" && \
    source "${HOME}/.iterm2_shell_integration.bash"


# ********** ********** ********** **********
# **********    bash-git-prompt    **********
# ********** ********** ********** **********

# If the binary exists source the it:
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi
# Make available in virtual env
export GIT_PROMPT_WITH_VIRTUAL_ENV=1
# Set custom theme:
export GIT_PROMPT_THEME=DSBarnes



# ********** ********** ********** **********
# **********  Node Version Manager **********
# ********** ********** ********** **********
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# ********** ********** ********** **********
# **********       Python          **********
# ********** ********** ********** **********
# Don't create .pyc files 
# (And if you've forgotten what that is keep this line)
export PYTHONDONTWRITEBYTECODE=1

# If pyenv is installed use it:
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# ********** ********** **********
#              Alias
# ********** ********** **********

alias ls='ls -GFh'          # better ls
alias vi='nvim'             # Neovim instead of vi
alias cat='bat'             # color for cat
alias poe='poetry'          # funny Poetry command (python)

# Git:
alias ga='git add'         # b/c I use git too often not to
alias gc='git commit -m'
alias gcl='git clone'
alias gpr='git pull origin'
alias gpo='git push origin'
alias gb='git branch -a'
alias gdiff='git diff'
alias gstat='git status'
alias gstash='git stash'
alias glog='git log'
alias grao='git remote add origin'
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


# ********** ********** **********
#              Paths 
# ********** ********** **********

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

# Some forgotten shit:
# flake8 (Py 2 & 3)
# PYTHON3_USER_SITE="${HOME}/Library/Python/3.7"
# PYTHON2_USER_SITE="${HOME}/Library/Python/2.7"
# export PATH="${PYTHON2_USER_SITE}/bin":${PATH}
# export PATH="${PYTHON3_USER_SITE}/bin/":${PATH}
