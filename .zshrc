## fucking zsh
alias ll="ls -alh"
setopt noautomenu
setopt nomenucomplete
autoload -U select-word-style
select-word-style bash
# this one makes git autocompletion work, for some reason
autoload -U compinit && compinit

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
setopt sh_word_split             # bash-like space separated for loops (c="a b c"; for d in $c; do; echo $d; done ## prints on one line in zsh by default but should be separate)

# PATHS!
# So I like ~/bin. Sue me
export PATH="${PATH}:${HOME}/bin"
export PATH="${PATH}:${HOME}/.rvm/bin"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
