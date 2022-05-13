# .bashrc

alias la='ls -la'
alias bashrc='vim ~/.bashrc'
alias makepass='python3 -c "import crypt;print(crypt.crypt(input("clear-textpw: "), crypt.mksalt(crypt.METHOD_SHA512)))"'
alias vimrc='vim ~/.vimrc'

export PS1="[\A] \[$(tput sgr0)\]\[\033[38;5;27m\]\\$\[$(tput sgr0)\]: \[$(tput sgr0)\]"
