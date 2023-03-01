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

alias dolar='python3 /home/eycer/Documents/gitea/python_scripts/usd.py'

