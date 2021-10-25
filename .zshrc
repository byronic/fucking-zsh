## fucking zsh
alias ll="ls -alh"
setopt noautomenu
setopt nomenucomplete
autoload -U select-word-style
select-word-style bash

## dragons are cool
cat ~/.motd

## tailscale alias
alias tailscale=/Applications/Tailscale.app/Contents/MacOS/Tailscale

## history bumps
# if you leave it at the default location you also have to 
# set /etc/zshrc, which is sure to be overwritten someday. BOO HISS &c.
export HISTFILE="$HOME/.zsh_usurped_history"
export HISTSIZE=655350
export SAVEHIST=655350
export HISTFILESIZE=655350
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.

export PATH=/Users/byron/bin:${PATH}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
