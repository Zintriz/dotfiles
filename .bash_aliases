# ~/.bash_aliases
#
# ~/.bashrc requires:
# 
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
#
# Aliases for safer file deletion and trash management

# Replace rm with trash-put (safe delete)
alias rm='trash-put'

# Real rm if you really want permanent deletion
alias rrm='\rm'


alias pipewire-restart='systemctl --user restart wireplumber pipewire pipewire-pulse'
alias discord='flatpak run dev.vencord.Vesktop'
alias vesktop='flatpak run dev.vencord.Vesktop'
alias easyeffect='flatpak run dev.vencord.Vesktop'
alias cp='rsync -ahz --info=progress2'
alias vim='nvim'


## Default Linux Mint ##

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

