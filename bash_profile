# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
alias vi=vim

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export GOROOT=/usr/local/go
export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
