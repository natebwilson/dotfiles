# Created by newuser for 5.9
# ---- history (zsh equivalents of HISTCONTROL/shopt histappend etc.) ----
HISTSIZE=1000
SAVEHIST=2000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# ---- lesspipe ----
[[ -x /usr/bin/lesspipe ]] && eval "$(SHELL=/bin/sh lesspipe)"

# ---- colors + aliases ----
if [[ -x /usr/bin/dircolors ]]; then
  if [[ -r ~/.dircolors ]]; then
    eval "$(dircolors -b ~/.dircolors)"
  else
    eval "$(dircolors -b)"
  fi
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -a'
alias l='ls -CF'

alias clean="clear; neofetch"
alias sshuva="ssh cqb2kc@portal.cs.virginia.edu"
alias moveresume="cp /home/nateb/resume/resume.pdf /mnt/c/Users/nateb/OneDrive/Documents/resume/"
alias v="nvim"

# ---- WSL2 X display (keep only if you actually use an external X server) ----
export DISPLAY="$(ip route list default | awk '{print $3}'):0"
export LIBGL_ALWAYS_INDIRECT=1
export QT_ENABLE_HIGHDPI_SCALING=1

# ---- PATH (consolidated, fixed tilde) ----
path+=(
  /opt/nvim-linux-x86_64/bin
  /usr/local/texlive/2024/bin/x86_64-linux
  /home/nateb/projects/ncurses/todo
  /home/nateb/projects/howdoi
  $HOME/.local/bin
)
export PATH

psmake() {
  if [[ -z "$1" ]]; then
    echo "Usage: psmake <Problem Set Number>"
    return 1
  fi
  mkdir -p "ps$1"
  cp ~/dmt.sty "./ps$1/"
  cp ~/frontmatter.tex "./ps$1/"
  cd "ps$1" || return
  touch "ps$1.tex"
}

# ---- nvm ----
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# ---- starship, brew, zoxide ----
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh --cmd cd)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ---- win32yank ----
alias win32yank='win32yank.exe'


