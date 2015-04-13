#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR=vim
export TERM=konsole-256color
export QT_IM_MODULE=ibus

source /usr/share/git/completion/git-prompt.sh
PS1='[\u@\h $(__git_ps1 "%s:")\W]\$ '

alias vi=vim

NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="${NPM_PACKAGES}/lib/node_modules:${NODE_PATH}"

PATH=${NPM_PACKAGES}/bin:${HOME}/bin:${PATH}

unset MANPATH
MANPATH="${NPM_PACKAGES}/share/man:$(manpath)"

export WORKON_HOME=~/.venv
source /usr/bin/virtualenvwrapper.sh
