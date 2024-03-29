# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi

unset rc
export PS1="[\A] \[$(tput sgr0)\]\[\033[38;5;27m\]\\$\[$(tput sgr0)\]: \[$(tput sgr0)\]"

#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/github
export PATH=/home/eycer/Documents/github/scripts/:$PATH

# --- aliases ---

alias dolar='python3 /home/eycer/Documents/gitea/python_scripts/usd.py'
alias la='ls -la'
alias tb='nc termbin.com 9999'
alias onedisplay='xrandr --output HDMI-0 --mode 1920x1080 --rate 60.00 --output DVI-D-0 --off'
alias twodisplay='xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 60.00 --output DVI-D-0 --mode 1366x768 --rate 59.79 --left-of HDMI-0'
alias netscan='sudo nmap -sn 192.168.0.0/24'
