#***************************************************************************
# User Set
#***************************************************************************

set -o vi
alias k='klayout'
alias g='gvim'
alias lf='ls | sed "s:^:`pwd`/:"'
alias r='cd ~/riscv'
alias c="cd ~/chisel"
alias v="cd ~/vcs-simu"
alias e='gnome-terminal'
alias ev='evince'
#alias w='xrandr --size 1600x1200'
alias x='p=$(pwd);gnome-terminal --window;cd $p'
alias g='gvim --remote-tab-silent'
alias gdiff='gvimdiff'
alias tnew='tmux new -s'
alias ls='ls -lF'
alias ll='ls -lFrt'
alias la='ls -LaF'
alias cp='cp -r'
alias python3='python3.6'
alias rm='trash-put'
alias empty='trash-empty'
alias count='find . -type f | xargs cat | wc -l'
alias h='history'
alias s='source /opt/env/wbr.bashrc'
alias netrestart='sudo service network-manager restart'
export HISTTIMEFORMAT='%F %T '
alias cd='cdls'

cdls() { \cd "$@" && la; }

#***************************************************************************
# Set Git Config Begin
#***************************************************************************
alias gset='git config --global url."https://hub.fastgit.org".insteadOf https://github.com'
alias grm='git config --global --unset url.https://hub.fastgit.org.insteadof'
alias glist='git config --global --list'
alias glog='git log --oneline --graph'
#***************************************************************************
# Set Git Config End
#***************************************************************************


#***************************************************************************
# Set PS1 End
#***************************************************************************
export PS1="\[$(tput bold)\]\[\033[38;5;1m\]*@^\[\033[38;5;11m\]_\[\033[38;5;14m\]^@*\[$(tput sgr0)\]\[\033[38;5;90m\]:\[\033[38;5;48m\]<<--\[$(tput bold)\]\[\033[38;5;9m\]\w\[$(tput sgr0)\]\[\033[38;5;48m\]-->>\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;45m\]\h\[$(tput sgr0)\]\[$(tput bold)\]@\[$(tput sgr0)\]\[\033[38;5;160m\]\u\[$(tput sgr0)\]\[\033[38;5;227m\]\$(__git_ps1 '(%s)')\[$(tput sgr0)\]\[\033[38;5;46m\]\\$\[$(tput sgr0)\]"
#***************************************************************************
# Set PS1 End
#***************************************************************************

toilet -f Big -w 70 'Welcome              WuBingRui' | boxes -d cat -a hc -p h8 | lolcat
#***************************************************************************
# Set End
#***************************************************************************

#**************************************************************************
# Source Set
#**************************************************************************
source  /opt/env/riscv.bashrc
source  /opt/env/synopsys.bashrc
source  /opt/env/cadence.bashrc
source  /opt/env/mentor.bashrc
source  /opt/env/uvm.bashrc
source  /opt/env/function.bashrc
#**************************************************************************
# Source End
#**************************************************************************
