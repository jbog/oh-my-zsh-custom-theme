if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="\033[0m"; fi

JASPER_GIT_CLEAN_COLOR="%{$fg[green]%}"
JASPER_GIT_DIRTY_COLOR="%{$fg[red]%}"

PROMPT='%{$reset_color%}%* [%n@%m] %c ➤ %{$reset_color%}'
RPROMPT='%{$reset_color%}%p $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%B%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" $JASPER_GIT_DIRTY_COLOR✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" $JASPER_GIT_CLEAN_COLOR✓"

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=1:ln=4:so=32:pi=33:ex=31:bd=32:cd=32:su=33:sg=32:tw=32:ow=32:"

