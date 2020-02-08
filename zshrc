
#███████╗███████╗██╗  ██╗██████╗  ██████╗
#╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#  ███╔╝ ███████╗███████║██████╔╝██║     
# ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#███████╗███████║██║  ██║██║  ██║╚██████╗
#╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

source ~/.zplug/init.zsh

#Plugins
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "softmoth/zsh-vim-mode"
zplug "plugins/colored-man-pages",   from:oh-my-zsh
zplug "plugins/command-not-found",   from:oh-my-zsh
zplug "MichaelAquilina/zsh-auto-notify"
zplug "b4b4r07/enhancd", use:enhancd.sh

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

#history
HISTFILE=~/.zsh/zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory

# Personal configuration

#theme
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_DIR_TRUNC=0
SPACESHIP_HG_SHOW=false
SPACESHIP_HG_BRANCH_SHOW=false
SPACESHIP_HG_STATUS_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECTL_SHOW=false
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_BATTERY_THRESHOLD=25




#Vim-mode
MODE_CURSOR_VICMD="block"
MODE_CURSOR_VIINS="steady bar"
MODE_CURSOR_SEARCH="steady underline"

MODE_INDICATOR_VIINS='%F{15}[%F{9}INSERT%F{15}]%f'
MODE_INDICATOR_VICMD='%F{15}[%F{2}NORMAL%F{15}]%f'
MODE_INDICATOR_REPLACE='%F{15}[%F{yellow}REPLACE%F{15}]%f'
MODE_INDICATOR_SEARCH='%F{15}[%F{5}SEARCH%F{15}]%f'
MODE_INDICATOR_VISUAL='%F{15}[%F{yellow}VISUAL%F{15}]%f'
MODE_INDICATOR_VLINE='%F{15}[%F{yellow}V-LINE%F{15}]%f'

RPROMPT='${MODE_INDICATOR_PROMPT}'
setopt TRANSIENT_RPROMPT

# Preferred editor
   export EDITOR='nvim'

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

#autosuggestion
bindkey '^l' autosuggest-accept

#autostart
pfetch
