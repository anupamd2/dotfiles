export HISTFILESIZE=
export HISTSIZE=
export TERM="xterm-256color"

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="nvim +Man!"
export PS1="\[\033[01;32m\][\u@\h \[\033[01;37m\]\w\[\033[01;32m\]]\$()\[\033[00m\] "
export JAVA_HOME=/usr/lib/jvm/jre-11-openjdk

alias vim="nvim"
alias ll="eza -al --color=always --group-directories-first"
alias ls="eza -a --color=always --group-directories-first"

bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

eval "$(fzf --bash)"
