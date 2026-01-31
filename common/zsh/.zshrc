# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"
touch -a "${HOME}/.secrets" && source "${HOME}/.secrets"
touch -a ~/.aliases && source ~/.aliases
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

# Check for plugin and zgenom updates every 7 days
# This does not increase the startup time.
zgenom autoupdate

# if the init script doesn't exist
if ! zgenom saved; then
  echo "Creating a zgenom save"

  zgenom load https://gitlab.com/code-stats/code-stats-zsh.git
  zgenom load romkatv/powerlevel10k powerlevel10k
  #zgenom load zsh-users/zsh-completions src
  zgenom load zsh-users/zsh-syntax-highlighting
  zgenom load zsh-users/zsh-autosuggestions
  #zgenom load zsh-users/zsh-autocomplete

  # completions
  #zgenom load zsh-users/zsh-completions

  # save all to init script
  zgenom save

  # Compile your zsh files
  zgenom compile "$HOME/.zshrc"
fi


if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

touch -a .zshrc.os-specific & source .zshrc-os-specific
touch -a .zshrc.machine-specific & source .zshrc-machine-specific
touch -a .zshrc.local-overrides & source .zshrc.host-specific
