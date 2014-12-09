ZSH_THEME_HOST_PREFIX="%{$bg_bold[${HOSTSLUGCOLOR:=white}]$fg_bold[white][$HOSTSLUG]%}%{$reset_color%} "
function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

if [ "x$HOSTMACHINE" != "x " ]; then
	PROMPT="$ZSH_THEME_HOST_PREFIX%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)${HOSTMACHINE:=%m} %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} "
else
	PROMPT="$ZSH_THEME_HOST_PREFIX%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n) %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} "
fi

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
