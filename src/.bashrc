# .bashrc

alias la='ls -la'
alias menu='~/Documents/scripts/menu/menu.sh'
alias bashrc='vim ~/.bashrc'
alias vn='vboxmanage startvm VNs'
alias makepass='python3 -c "import crypt;print(crypt.crypt(input("clear-textpw: "), crypt.mksalt(crypt.METHOD_SHA512)))"'
alias vimrc='vim ~/.vimrc'
alias minecraft='java -jar ~/Documents/minecraft/TLauncher-2.841.jar'
alias eal4drado='ssh -i ~/.ssh/LightsailDefaultKey-us-east-1.pem bitnami@44.199.213.120'


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

export PS1="[\A] \[$(tput sgr0)\]\[\033[38;5;27m\]\\$\[$(tput sgr0)\]: \[$(tput sgr0)\]"
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


