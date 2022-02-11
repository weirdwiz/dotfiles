
# Maintainer: @rexagod

# Options {{{

setopt noautomenu
# }}}

# Variables {{{

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
HISTCONTROL=ignoreboth
HISTFILESIZE=10000
HISTSIZE=10000
HIST_STAMPS="mm/dd/yyyy"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#928374,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_THEME="darkblood"
# }}}

# PATH {{{

export PATH="\
$GOPATH/bin:\
$HOME/.bin:\
$HOME/.local/bin:\
$HOME/bin:\
$HOME/go/bin:\
/home/linuxbrew/.linuxbrew/bin:\
/usr/bin:\
/usr/lib:\
/usr/local/bin:\
/usr/local/go/bin:\
/usr/share:\
$HOME/.cargo/bin:\
$HOME/.emacs.d/bin:\
$HOME/git/openshift-bin/:\
" # $PATH intentially not included here.
# }}}

# Exports{{{

export BASHRC='~/.bashrc'
export EDITOR='emacsclient -c'
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git/*' --color auto"
export FZF_DEFAULT_OPTS=""
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export IMAGE_TAG='latest'
export LANG=en_US.UTF-8
export MOZ_ENABLE_WAYLAND=1
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export RANGER_LOAD_DEFAULT_RC="FALSE"
export UPDATE_ZSH_DAYS=15
export VIMRC='~/.config/nvim/init.vim'
export VIM_SESSION='~/.session.vim'
export VISUAL="emacsclient -c"
export XDG_SESSION_TYPE='wayland'
export ZSH="$HOME/.oh-my-zsh"
export ZSHRC='~/.zshrc'
export BAT_THEME="gruvbox"
export AWS_PROFILE=openshift-dev
#}}}

# Plugins {{{

plugins=(
  fzf
  git
  zsh-256color
  zsh-syntax-highlighting
  zsh-z
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
# }}}

# Aliases{{{

alias emacs="emacsclient-one-frame.sh"
alias bat="bat --theme=\"gruvbox\" --style grid,numbers,changes"
alias bb="./bin/bridge"
alias c="clear"
alias gS="git stash"
alias gSp="git stash pop"
alias gh="go help"
alias hgrep="history | grep "
alias k="kubectl"
alias ls="lsd"
alias l="ls -1Sh"
alias la="ls -1SAh"
alias ll="ls -1lSh"
alias ohmyzsh="emacsclient -t ~/.oh-my-zsh"
alias rr="ranger"
alias soc="source ./contrib/oc-environment.sh"
alias sshd="sudo /usr/sbin/sshd"
alias szr="source ~/.zshrc"
alias vif="fzf --preview-window=right:50% --preview=\"bat --color always {}\" --bind \"enter:execute(nvim {})\""
# }}}


# Misc. {{{
source ~/.local/vim-gist.token.bash

if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# }}}

if [ -e /home/weirdwiz/.nix-profile/etc/profile.d/nix.sh ]; then . /home/weirdwiz/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
