# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#. ~/dev/z.sh
eval "$(zoxide init zsh)"

export GRAPHVIZ_DOT=/opt/homebrew/bin/dot

PATH=~/dev/workspace/private/gocan/bin:${PATH}
PATH=~/bin:${PATH}
PATH=~/scripts:${PATH}

# ls
TREE_IGNORE="cache|log|logs|node_modules|vendor"

alias l=' exa --group-directories-first'
alias ls=' exa --group-directories-first'
alias la=' ls -a'
alias ll=' ls --git -l'
alias lt=' ls --tree -D -L 2 -I ${TREE_IGNORE}'
alias ltt=' ls --tree -D -L 3 -I ${TREE_IGNORE}'
alias lttt=' ls --tree -D -L 4 -I ${TREE_IGNORE}'
alias ltttt=' ls --tree -D -L 5 -I ${TREE_IGNORE}'

alias vim="nvim"
alias cd="z"
alias zz="z -"
alias rm="trash"
alias nix="nix-shell"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR=vim
export VISUAL="$EDITOR"
