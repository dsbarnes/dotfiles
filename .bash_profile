# Redirect to source the .bashrc file so that login and 
# non-login (sub)shells give the same experience.

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
