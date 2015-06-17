if [ -z "$PS1" ]; then
    true
else # if the shell is interactive, tell me a fortune
    fortune | cowsay
fi

###########
# ALIASES #
###########

# don't clobber files without warning
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -alhp' # show all files with permissions
alias la='ls -AGp' # show all hidden files
alias ls='ls -GF'

alias ..='cd ..'

alias bc='bc -lq' # calculator in math mode with no intro


# Customizing the prompt
function exitstatus {

    EXITSTATUS="$?"
    BOLD="\[\033[1m\]"
    RED="\[\033[1;31m\]"
    GREEN="\[\e[32;1m\]"
    BLUE="\[\e[34;1m\]"
    OFF="\[\033[m\]"

    if [[ $VIRTUAL_ENV != "" ]]
    then
	# Red name if inside a virtualenv
	venv="${RED}(${VIRTUAL_ENV##*/})"
    else
	venv=''
    fi

    if [[ $(__git_ps1) != "" ]]
    then
	# green branch name if inside a git repo
	gitprompt="${GREEN}\$(__git_ps1)"
    else
	gitprompt=''
    fi
    
    PROMPT="${venv}${gitprompt}${OFF}[\h:\u ${BLUE}\W${OFF}"

    if [ "${EXITSTATUS}" -eq 0 ]
    then # exit success, smiley
	PS1="${PROMPT} ${BOLD}${GREEN}:)${OFF} ]\$ "
    else # exit fail, frowney
	PS1="${PROMPT} ${BOLD}${RED}:(${OFF} ]\$ "
    fi

    PS2="${BOLD}>${OFF} "
}

PROMPT_COMMAND=exitstatus
