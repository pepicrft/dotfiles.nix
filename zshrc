
RTX_PATH=/opt/homebrew/bin/rtx

if [ -f "$RTX_PATH" ]; then
    eval "$($RTX_PATH activate zsh)"
fi