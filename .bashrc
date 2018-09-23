#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR=vim
export QT_IM_MODULE=ibus
export HISTCONTROL=ignoredups

if [ -e /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
    PS1='[\u@\h $(__git_ps1 "%s:")\W]\$ '
fi

alias packer='packer --auronly'

export npm_config_prefix=~/.node_modules
PATH=${npm_config_prefix}/bin:${HOME}/bin:${PATH}

unset MANPATH
MANPATH="${npm_config_prefix}/share/man:$(manpath)"

source "$HOME/.bash_completion"

BASE16_SHELL="$HOME/.base16-manager/chriskempton/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.shv")"

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
