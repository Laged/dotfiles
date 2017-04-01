export EDITOR=/usr/bin/vim
export PATH="${HOME}/.local/bin:${PATH}"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Codings/emsdk_portable/clang/fastcomp/build_master_64/bin:$PATH"
#export PATH="$HOME/Codings/emsdk_portable:$PATH"

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/yarn
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/clipboard
  zgen oh-my-zsh themes/arrow

  # generate the init script from plugins above
  zgen save
fi
#
alias clbin="curl -F 'clbin=<-' https://clbin.com"
alias mkcd='_(){ mkdir $1; cd $1; }; _'

#xset -dpms s off
source ~/.aliases
