# dotfiles.nix

This repository contains a Nix file,
[`pepicrft.nix`](./pepicrft.nix),
that I use to provision the environments from where I work.

## Set it up

1. Install Nix: `sh <(curl -L https://nixos.org/nix/install) --daemon`.
2. Enable flakes:

```bash
mkdir -p ~/.config/nix

cat <<EOF >> ~/.config/nix/nix.conf
experimental-features = nix-command flakes
EOF
```
3. Restart the Nix daemon:

```bash
sudo launchctl kickstart -k system/org.nixos.nix-daemon
```

4. Create a symlink at `~/.config/nixpkgs` that points to the repository directory:

```bash
ln -s {path-to-repo} ~/.config/nixpkgs
```
5. Run `nix run . switch` in the repository directory.
