#### All of my alias definitions
if [ $(uname) = "Darwin" ]; then MAC=1; else MAC=""; fi;
alias pbcopy='reattach-to-user-namespace pbcopy'
alias pbpaste='reattach-to-user-namespace pbpaste'

if [ $MAC ]
then 
    alias ls='ls -G'
else
    alias ls='ls -G --color'
fi
alias gs='git status'
alias h='history 5'
alias f='find . -iname '
alias zrc='source ~/.zshrc'
alias got='git '

#### Docker Commands
