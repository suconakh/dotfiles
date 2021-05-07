# Greeting
function fish_greeting
    # wal -nqi pics/wallpapers/wallhaven-2813r9.png &&
    # neofetch
    pfetch
end

# Variables
set -x PATH "$HOME/.local/bin:$PATH"
set -x PATH "$HOME/.emacs.d/bin:$PATH"
set -x EDITOR "nvim"

# --- Aliases --- 

# coloring
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls
alias ls="exa -F"
alias l.="ls -d .*" 
alias ll="ls -al"
alias la="ls -a"

# cd
alias ..="cd .."
alias cf="cd ~/.config"

# etc
alias gs="git status" 
alias vim="nvim"
alias tg="telegram-desktop"
alias ds="discord"

# configs
alias awrc="vim ~/.config/awesome/rc.lua"
alias awtheme="vim ~/.config/awesome/theme.lua"
alias alacrc="vim ~/.config/alacritty.yml"
alias fishrc="vim ~/.config/fish/config.fish"
alias i3rc="vim ~/.config/i3/config"
alias pulserc="vim ~/.config/pulse/default.pa"
alias pbrc="vim ~/.config/polybar/config"
alias picomrc="vim ~/.config/picom/picom.conf"
alias vimrc="vim ~/.config/nvim/init.vim"
alias qtrc="vim ~/.config/qtile/config.py"
alias qtkeys="vim ~/.config/qtile/keys.py"
alias qtlayouts="vim ~/.config/qtile/layouts.py"
alias qtscreens="vim ~/.config/qtile/screens.py"
