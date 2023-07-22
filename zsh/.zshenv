# zsh
export ZDOTDIR=~/.config/zsh
export ZSHRCD=$ZDOTDIR/conf.d/

[ -f $ZDOTDIR/.zprofile ] && source $ZDOTDIR/.zprofile

# go
export GOBIN=~/.go/bin

# path
path=(
	/opt/homebrew/bin
	/opt/homebrew/sbin
	~/.local/bin
	~/.local/bin/platform-tools
	~/.cargo/bin
	~/.volta/bin
  ~/Library/Python/3.9/bin
  $GOBIN
	$path
)

export VISUAL=nvim
export EDITOR="$VISUAL"

export GPG_TTY=$(tty)

export ZSH_TMUX_AUTOSTART=true
export NODE_ENV=development

# fzf
export FZF_BASE=~/.fzf
export DISABLE_FZF_KEY_BINDINGS="true"
export FZF_DEFAULT_OPTS="--prompt=' ' --pointer='' --marker='' --info='hidden' --margin=1,0"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'

# spaceship prompt
export SPACESHIP_CONFIG=$ZDOTDIR/spaceship.zsh

# goku
export GOKU_EDN_CONFIG_FILE=~/.config/karabiner/karabiner.edn
