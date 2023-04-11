{
    programs.zsh = {
        enable = true;
        enableAutosuggestions = true;
        enableSyntaxHighlighting = true;
        oh-my-zsh = {
            enable = true;
            plugins = [ "git" ];
            theme = "robbyrussell";
        };
        shellAliases = {
            cd = "z";
            cat = "bat";
        };
        initExtra = builtins.readFile ./zshrc;
    };
}
