#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh
# Needed to enable Ubuntu default autocomplete
. /usr/share/bash-completion/bash_completion

# From Ubuntu default bashrc
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias de='nvidia-settings --assign "CurrentMetaMode=DPY-1: nvidia-auto-select @1440x2560 +0+0 {ViewPortIn=1440x2560, ViewPortOut=2560x1440+0+0, Rotation=90}, DPY-3: nvidia-auto-select @3840x2160 +1440+0 {ViewPortIn=3840x2160, ViewPortOut=3840x2160+0+0}" \
 && xrandr --output DP-0 --primary'
alias de1='nvidia-settings --assign "CurrentMetaMode=DPY-3: nvidia-auto-select @3840x2160+0+0 {ViewPortIn=3840x2160, ViewPortOut=3840x2160+0+0}"'
alias pr='nvidia-settings --assign "CurrentMetaMode=DPY-0: nvidia-auto-select @1920x1080 +0+0 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}"'
# Refesh LVDS display after inverted colors because of suspend
alias lvds='xrandr --output LVDS --off; xrandr --output LVDS --auto;'

set -o vi
# Copy last argument functionality from emacs mode
bind -m vi-command ".":insert-last-argument

# Enable caseinsensitive tab completion
bind 'set completion-ignore-case on'
