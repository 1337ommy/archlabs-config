
#███████╗███████╗██╗  ██╗██████╗  ██████╗
#╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#  ███╔╝ ███████╗███████║██████╔╝██║     
# ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#███████╗███████║██║  ██║██║  ██║╚██████╗
#╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

source ~/.zplug/init.zsh

#Plugins
zplug "softmoth/zsh-vim-mode"
zplug "plugins/colored-man-pages",   from:oh-my-zsh
zplug "MichaelAquilina/zsh-auto-notify"

#Completion and Highlighting
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"

# Load theme file
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# source plugins and add commands to $PATH
zplug load

# Personal configuration

#theme
SPACESHIP_VI_MODE_SHOW=false

#Vim-mode
MODE_CURSOR_VICMD="#96b5b4 block"
MODE_CURSOR_VIINS="#bf616a steady bar"
MODE_CURSOR_SEARCH="#a3b38c steady underline"

MODE_INDICATOR_VIINS='%F{15}[%F{9}INSERT%F{15}]%f'
MODE_INDICATOR_VICMD='%F{15}[%F{2}NORMAL%F{15}]%f'
MODE_INDICATOR_REPLACE='%F{15}[%F{yellow}REPLACE%F{15}]%f'
MODE_INDICATOR_SEARCH='%F{15}[%F{5}SEARCH%F{15}]%f'
MODE_INDICATOR_VISUAL='%F{15}[%F{yellow}VISUAL%F{15}]%f'
MODE_INDICATOR_VLINE='%F{15}[%F{yellow}V-LINE%F{15}]%f'

RPROMPT='${MODE_INDICATOR_PROMPT}'
setopt TRANSIENT_RPROMPT
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='vim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

#aliases
alias v="nvim"
alias s="sudo"
alias zat='zathura'
alias untar='tar -zxvf'
alias vs='nvim "+set si"'
alias edit='nvim'
alias root='sudo -i'
alias su='sudo -i'
alias cat="bat"
alias sv="sudoedit"
alias sv='sudo v'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias upall="baph -u -N"
alias blth="sudo systemctl start bluetooth"
alias pic="vimiv"
alias torrent="transmission-cli"
alias kit="kitty +kitten"
alias uninstall="sudo pacman -R"
alias install="sudo pacman -S"
alias ls="exa --header --long --git"
alias ..='cd ..'

#bspwm_border_vim
export BSPWM_VIM_INSERT=#bf616a
export BSPWM_VIM_NORMAL=#96b5b4

#keybinding autosuggestion
bindkey '^l' autosuggest-accept

pfetch
