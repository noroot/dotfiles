#           _   _
#  ___ _ __| |_| |_
# / _ \ '  \  _| ' \
# \___/_|_|_\__|_||_|
#
# https://falsetrue.io
#
# .zshrc configuration
#

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Tricks
alias dotfiles='/usr/bin/git --git-dir=$HOME/Projects/Personal/Dotfiles/ --work-tree=$HOME'
alias mc="mc --nosubshell"

# Utils

## Sys
alias most='du -hsx * | sort -rh | head -10'
alias totalusage='df -hl --total | grep total'
alias web='python3 -m http.server'
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
alias most='du -hsx * | sort -rh | head -10'
alias totalusage='df -hl --total | grep total'
alias web='python3 -m http.server'

## Remote
alias tb="nc termbin.com 9999"
alias weather="{ read -r city; curl wttr.in/$city } <<< $arg1"
alias btcprice="curl -s http://api.coindesk.com/v1/bpi/currentprice.json  | jq '.bpi.USD.rate'"
alias myip="curl icanhazip.com"

# Fun
alias hacker_mode="cat /dev/urandom | hexdump -C | grep "ca fe""
