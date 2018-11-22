alias ll="ls -FGlAhp"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ~="cd ~"
alias .1="cd ../"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias cdev="cd ~/Dev/"
alias rmpyc="find . -name '*.pyc' -delete"

# git aliases
alias gwip="git commit -am 'WIP'"
alias gpo="git push origin"
alias gad="git add -A"
alias gci="git ci -m"
alias gst="git st"
alias gco="git co"
alias gdiff="git diff"

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

# Prompt 1: "username@hostname:"
PS1="\[$(tput setaf 1)\]\e[\e[34;40m\u\e[m@\e[31;40m\h\e[m:\]"

# Prompt 2: "path/to/where/you/are"
PS1="$PS1\e[32;40m\w\e[m"

# Prompt 3: "(gitbranch)"
PS1="$PS1 \$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \")\[\033[1;33m\]\$(parse_git_branch)\[\033[1;37m\]\n\$ \[$(tput sgr0)\]"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Download git auto-completion script from:
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
