if [[ ! -v AUTOLS_CMD ]]; then
    if [[ -v eza ]]; then
        cmd="eza -AG --icons --color=always"
    elif [[ -v colorls ]]; then
        cmd="colorls -A --group-directories-first"
    elif [[ -f lsd ]]; then
        cmd="lsd -AG --color=always"
    else
        cmd="ls -AG --color=always"
    fi
    export AUTOLS_CMD=$cmd
fi

auto_ls() {
	emulate -L zsh
	echo
    eval ${AUTOLS_CMD}
}

if [[ ! " ${chpwd_functions[*]} " =~ "auto_ls" ]]; then
  chpwd_functions=(auto_ls $chpwd_functions)
fi
