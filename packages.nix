{ pkgs, ... }: {
    home.packages = [
        pkgs.ruby_3_1
        pkgs.nodejs_20
        pkgs.erlangR25
        pkgs.elixir_1_14
        pkgs.nodePackages.pnpm
        pkgs.fzf
        pkgs.exa
        pkgs.ripgrep
        pkgs.zoxide
        pkgs.delta
        pkgs.sl
        pkgs.tree
        pkgs.nodePackages_latest.typescript
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
