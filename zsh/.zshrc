# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ALIASES
export DOTFILES='~/.dotfiles'
alias ll='ls -lah'
# Import anti-gen
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's lib
antigen use oh-my-zsh

# Load the theme
antigen theme romkatv/powerlevel10k

# Default repo plugins
antigen bundle wp-cli
antigen bundle drush
antigen bundle tmux
antigen bundle zsh_reload

# Plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle Aloxaf/fzf-tab

antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load Git completion
zstyle ':completion:*:*:git:*' script ./git-completion.bash
fpath=(. $fpath)

# Import nvm
export NVM_DIR="$HOME/.nvm"                                                                              
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm                                       │www-data@b7aa6d3351aa:/app$ node -v
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion   


autoload -U compinit && compinit

# Import fzf configs
source $DOTFILES/zsh/fzf-init.zsh


