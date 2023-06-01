#
# antidote
#

# clone antidote if necessary.
[[ -e $ZDOTDIR/.antidote ]] ||
  git clone --depth=1 https://github.com/mattmc3/antidote.git $ZDOTDIR/.antidote

source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load
