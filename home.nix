# Home manager search: https://mipmip.github.io/home-manager-option-search/
# Search packages: https://search.nixos.org/packages

{ config, pkgs, ... }:

{
    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    home.username = "pepibumur";
    home.homeDirectory = "/Users/pepibumur";

    home.packages = [
        pkgs.ruby_3_1
        pkgs.nodejs-18_x
        pkgs.erlangR25
        pkgs.elixir_1_14
        pkgs.nodePackages.pnpm
    ];

    programs.git = {
        enable = true;
        userName = "Pedro Piñera";
        userEmail = "pedro@craftweg.com";
        extraConfig = {
            core = {
                editor = "codium --wait";
            };
        };
    };

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    home.stateVersion = "22.11";

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    programs.zsh = {
        enable = true;
        enableAutosuggestions = true;
        enableSyntaxHighlighting = true;
        oh-my-zsh = {
            enable = true;
            plugins = [ "git" ];
            theme = "robbyrussell";
        };
    };
}