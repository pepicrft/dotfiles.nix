if [ -f "/opt/homebrew/bin/rtx" ]; then
    eval "$(/opt/homebrew/bin/rtx activate zsh)"
fi

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"