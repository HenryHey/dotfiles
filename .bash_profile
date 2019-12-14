# Set default editor to vim
export EDITOR=vim

# Set terminal edit mode to vim
set -o vi

# Use ripgrep for FZF
export FZF_DEFAULT_COMMAND="rg --files ."

# Use tabedit when selecting FZF result
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

alias ls=exa
alias vim=nvim
alias ssh=/usr/local/bin/color-ssh

# Show branch name in command prompt
gb() {
  echo -n '(' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo  -n ') '
}
git_branch() {
  gb | sed 's/() //'
}

PS1='\[$(tput setaf 7)\][\[$(tput setaf 3)\]$(git_branch)\[$(tput setaf 7)\]\w]$ \[$(tput sgr0)\]'
