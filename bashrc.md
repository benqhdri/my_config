```shell script
set -o vi                           # use vim as default

# history config
HISTCONTROL=ignoredups
HISTSIZE=2000
HISTFILESIZE=2000
shopt -s histappend                 # append to the history file, don't overwrite it

# common alias
alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'

alias c='clear'
alias h='history'
alias tree='tree --dirsfirst -F'
alias mkdir='mkdir -p -v'
alias l='ls'                        # list files
alias l.='ls -d .*'                 # list hidden files
alias ll='ls -lhrt'                 # extra info compared to "l"
alias lld='ls -lUd */'              # list directories
alias la='ls -a'                    # list hidden files


# Set the prompt.
# function bash_prompt(){
#    PS1='${debian_chroot:+($debian_chroot)}'${blu}'$(git_branch)'${pur}' \W'${grn}' \$ '${clr}
# }

# bash_prompt

# use git bash style
[[ -n "${MSYS2_PS1}" ]] && export PS1="${MSYS2_PS1}"

[[ $(declare -p PS1 2>/dev/null | cut -c 1-11) = 'declare -x ' ]] || \
  export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n'"${_ps1_symbol}"' '
unset _ps1_symbol

shopt -q login_shell || . /etc/profile.d/git-prompt.sh

clear
```