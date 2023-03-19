{ pkgs, ... }: {
    home.packages = [
        pkgs.ruby_3_1
        pkgs.nodejs-18_x
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
    ];
}
