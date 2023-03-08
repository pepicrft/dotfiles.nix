# Home manager search: https://mipmip.github.io/home-manager-option-search/
# Search packages: https://search.nixos.org/packages

{ config, pkgs, ... }:

{
    home.stateVersion = "22.11";
    home.username = "pepibumur";
    home.homeDirectory = "/Users/pepibumur";
    imports = [ ./packages.nix ./git.nix ./fzf.nix ./zoxide.nix ./zsh.nix ./direnv.nix];
    programs.home-manager.enable = true;
}
