# brew path is first!
export PATH=$(brew --prefix)/sbin:$(brew --prefix)/bin:$PATH:$HOME/bin

export EDITOR=emacs
export WORKON_HOME=~/Envs

# getting virtualenvwrapper ready
source /usr/local/bin/virtualenvwrapper.sh

# bash completion for brew downloaded software (probably)
source $(brew --prefix)/etc/bash_completion

# allowing the git branch to be shown in the prompt
source ~/scripts/git-prompt.sh

# run .bashrc for the real fun
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
