# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

autoload -U promptinit; promptinit

prompt pure

plugins=(
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# some useful alias
alias v=nvim
alias c='clear'
alias h='history'
alias e='exit'
alias ..='cd ..'
alias ...='cd ../..'
alias get='sudo dnf install'
alias U='sudo dnf update && sudo dnf upgrade'
alias H='~/Downloads/HTTPie-2024.1.2.AppImage'
alias qb='./Downloads/qbittorrent-4.6.5_x86_64.AppImage'

# fnm
FNM_PATH="/home/baba/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/baba/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
export PATH=$HOME/.local/bin:$PATH

# pnpm
export PNPM_HOME="/home/baba/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$PATH:$(go env GOPATH)/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "/home/baba/.deno/env"