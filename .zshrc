export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH


autoload -U colors && colors
PS1="%B%F{034}%n@%m%f%b:%B%F{019}%~ %#%f%b "

plugins=(
    git
    history-substring-search
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
)

source $HOME/.bash_aliases

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# alias for kitty during ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
