
# MacPorts Installer addition on 2015-04-28_at_22:11:24: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:/opt/nvim-osx64/bin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export EDITOR=/usr/bin/vim
#export CLICOLOR=1
#export LSCOLORS=exgxfxdxcxegedabagacad
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTFILESIZE=10000

alias l="ls -la --color=always"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias vim="nvim"
alias vi="nvim"
#alias tmux="tmux -2"

set -o vi
bind '"\e[5~":history-search-backward'
bind '"\e[6~":history-search-forward'
bind '"\C-p":previous-history'
bind '"\C-n":next-history'

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

if [ -d /Applications/Postgres.app/Contents/Versions/9.4/bin ]; then
    PATH="${PATH}:/Applications/Postgres.app/Contents/Versions/9.4/bin"
fi

if [ -d "${HOME}/bin" ]; then
    PATH="${PATH}:${HOME}/bin"
fi

GIT_COMP="${HOME}/.nix-profile/share/git/contrib/completion/git-completion.bash"
if [ -f "${GIT_COMP}" ]; then
    . "${GIT_COMP}"
fi

function promptln() {

    local last_st="${?##0}"
    local git_branch=""
    local venv_name=""

    local no_color="\[\033[00m\]"
    local fg_black="\[\033[1;30m\]"
    local fg_red="\[\033[1;31m\]"
    local fg_green="\[\033[1;32m\]"
    local fg_yellow="\[\033[1;33m\]"
    local fg_blue="\[\033[1;34m\]"
    local fg_magenta="\[\033[0;35m\]"
    local fg_cyan="\[\033[0;36m\]"
    local fg_white="\[\033[0;37m\]"
    local bg_red="\[\033[41m\]"
    local bg_white="\[\033[47m\]"


    if [ $last_st ]; then
        last_st="${bg_red}${fb_white}☇${last_st}${no_color} "
    fi

    git_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [[ -n $git_branch ]]; then
        if [[ -n $(git status -s 2> /dev/null) ]]; then
            git_branch="${fg_red}${git_branch} "
        else
            git_branch="${fg_white}${git_branch} "
        fi
    fi

    if [ ! -z "$VIRTUAL_ENV" ]; then
        venv_name="${fg_yellow}$(basename $(dirname $VIRTUAL_ENV))${no_color} "
    fi

    PS1="$last_st${venv_name}${fg_yellow}\u@\h${fg_blue} \w ${git_branch}${fg_blue}$ ${no_color}"
}

PROMPT_COMMAND=promptln

# Go
export GOPATH=$HOME/gobench
export PATH="${GOPATH}/bin:${PATH}"

# Activate autojump

if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    . /opt/local/etc/profile.d/autojump.sh
fi

if [ -e /Users/maresp/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/maresp/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
