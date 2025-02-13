# Use https://www.nerdfonts.com/#home for correct symbols

get_status() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
    os_symbol="\uf302" # nf-linux-apple
    os_color="magenta"
  else
    # Other
    os_symbol="\uebca" # nf-cod-terminal_bash
    os_color="green"
  fi
  echo "%(?:%{$fg_bold[$os_color]%}$os_symbol:%{$fg_bold[red]%}$os_symbol)%{$reset_color%}"
} 

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[245]%}git:(%{$FG[250]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[245]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(get_status) %{$FG[245]%}%m%{$reset_color%}:%{$FG[250]%}%(3~|%-1~/…/%1~|%~)%{$reset_color%} %B>%b '
RPROMPT='$(git_prompt_info)'
