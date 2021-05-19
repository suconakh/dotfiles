# theme
ZSH_THEME="fino-modified"

# plugins
plugins=(
    git 
    pip
    pyenv 
    thefuck
    tmux
    virtualenv 
    zsh-autosuggestions 
)

# zsh settings
ENABLE_CORRECTION="false" # autocorrection
HYPHEN_INSENSITIVE="true" # - and _ interchangeable autocompletion
COMPLETION_WAITING_DOTS="true" # red dots whilst waiting for completion

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=232,bg=242,bold,underline"  
# tmux
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOQUIT="false"
ZSH_TMUX_UNICODE="true"
ZSH_TMUX_FIXTERM_WITH_256COLOR="tmux-256color"

# compinstall
zstyle :compinstall filename '$ZDOTDIR/.zshrc'
autoload -Uz compinit
compinit

# zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch

# important
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/.zsh_aliases
source $ZDOTDIR/.zsh_functions
source $ZDOTDIR/.zsh_keys

# python
eval "$(pyenv init -)"
source $HOME/.local/bin/virtualenvwrapper.sh

# greeting
source $ZDOTDIR/.zsh_greeting
