#!/bin/bash
alias awsServer='ssh ubuntu@18.222.25.236 -i ~/.ssh/my-aws-instance.pem'
alias awsElminino='ssh elminino@18.222.25.236 -i ~/.ssh/my-aws-instance.pem'
alias piserver="ssh pi@10.0.0.189"
alias piminino='ssh elminio@10.0.0.189'
alias ls='ls --color=auto'
alias grep='grep --color=always'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias mssql='sqlcmd -S localhost -U SA'
alias psqladmin="sudo -u postgres psql"
alias restore="{ tmux source-file ~/.tmux.conf && source ~/.zshrc && source ~/.config/nvim/init.vim && sudo apt-get update && sudo apt-get upgrade -y} 1> /dev/null 2>&1" # Refresh shortcuts manually and reload bashrc
alias v='nvim -p'
alias vim='nvim -p'
# Power
alias reboot="sudo shutdown -r now"
alias shut="sudo shutdown -h now"

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

