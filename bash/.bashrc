################################
# Title:	Bash Configuration #
# Type:		Bash .Config       #
# By:		JtathaX   		   #
# Updaded:	10/31/17		   #
################################

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

# Prompt Settings #
#HOSTNAME="archlinux"
PS1="\[\033[38;5;45m\]\u@\H \w\$ \[\033[0m\]"	# Turquoise2 #00d7ff
#PS1="\[\033[0;38m\]\u@\H \w\$ \[\033[0m\]"		# Cyan

# Terminal Settings 
#TERM=vt1002
export TERM=xterm-256color
set -o noclobber 

# Initialization Settings #
#echo Welcome to Arch Linux $USER!
#echo
#screenfetch
#echo
#date
#echo
#cal
#fortune
#echo
feh --randomize --bg-scale ~/Pictures/Wallpapers/*
#feh --bg-scale ~/Pictures/Wallpapers/archlinux1.png 

# Alias Settings #
alias 1080=./Scripts/1080.sh
alias chrome=google-chrome-stable
alias lock=./Scripts/lock.sh
alias pcc=./Scripts/pccssh.sh
alias todo='clear && cat todo && echo'
alias update=./Scripts/update.sh
echo

# Start tmux
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
# Don't allow nested sessions:
if [[ "$TERM" != "xterm-256color" ]]; then
exec tmux -S /var/tmux/$USER new-session -A -s "$USER"
fi

# PATH settings #
PATH="/usr/jdk/bin:${PATH}"