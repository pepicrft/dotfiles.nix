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
            cat = "bat";
            ls = "exa";
            grep = "rg";
            ps = "procs";
        };
        initExtra = builtins.readFile ./zshrc;
    };
}
