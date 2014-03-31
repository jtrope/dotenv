[[ -S "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

##
# Your previous /Users/jtrope/.bash_profile file was backed up as /Users/jtrope/.bash_profile.macports-saved_2014-02-24_at_12:40:20
##

### Folder Shortcuts
export DROPBOX_PATH=$HOME/Dropbox
export CODE_PATH=$DROPBOX_PATH/dev

alias cdcode="cd $CODE_PATH"

## ENVIRONMENT VARIABLES
export AWS_ACCESS_KEY="AKIAIBOMWCQPO7U3MMVQ"
export AWS_SECRET_KEY="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"
export AWS_TEST="testBuckethehe"

# MacPorts Installer addition on 2014-02-24_at_12:40:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/Applications/Postgres93.app/Contents/MacOS/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
# Displays Git Branch in Command Prompt

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

# Prompt 1: "username@hostname:"
PS1="\[$(tput setaf 1)\]\e[\e[34;40m\u\e[m@\e[31;40m\h\e[m:\]"

# Prompt 2: "path/to/where/you/are"
PS1="$PS1\e[32;40m\w\e[m"

# Prompt 3: "(gitbranch)"
PS1="$PS1 \$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \")\[\033[1;33m\]\$(parse_git_branch)\[\033[1;37m\]\n\$ \[$(tput sgr0)\]"

# PS1="$txtylw\w$txtgrn\$(branch)$txtwht ∴$txtrst "
##

#### General Assemb.ly/WDI Stuff

# Ethan's JS loader

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Highligh directories
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
# export PYTHONPATH
