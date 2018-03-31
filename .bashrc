#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR=vim
export TERM=xterm-256color
export QT_IM_MODULE=ibus

if [ -e /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
    PS1='[\u@\h $(__git_ps1 "%s:")\W]\$ '
fi

alias packer='packer --auronly'

export npm_config_prefix=~/.node_modules
PATH=${npm_config_prefix}/bin:${HOME}/bin:${PATH}

unset MANPATH
MANPATH="${npm_config_prefix}/share/man:$(manpath)"

export WORKON_HOME=~/.venv
if [ -e /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi

if [ -e /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi


if [[ -n $SSH_CONNECTION && -z $TMUX ]]; then
    tmux a
fi
