{ pkgs, ... }: {
    home.packages = [
        pkgs.fzf
        pkgs.exa
        pkgs.ripgrep
        pkgs.zoxide
        pkgs.delta
        pkgs.sl
        pkgs.tree
        pkgs.bat
        pkgs.tig
        pkgs.comma
        pkgs.procs
        pkgs.bottom
        pkgs.tokei
        pkgs.gh
        pkgs.podman
    ];
}
