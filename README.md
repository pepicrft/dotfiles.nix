# dotfiles.nix

This repository contains a Nix file,
[`pepicrft.nix`](./pepicrft.nix),
that I use to provision the environments from where I work.

## Set it up

1. Install Nix: `sh <(curl -L https://nixos.org/nix/install) --daemon`.
2. Install [Home Manager](https://nix-community.github.io/home-manager/index.html):

```
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```
3. Clone the repository: `git clone https://github.com/pepicrft/dotfiles.nix.git`
4. Create a symlink at `~/.config/nixpkgs` that points to the repository directory:

```bash
ln -s {path-to-repo} ~/.config/nixpkgs
```
5. Run `home-manager switch`