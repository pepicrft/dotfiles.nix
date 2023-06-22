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
4. Install a tool to create a profile: `nix-env -i comma`.
5. Create a symlink at `~/.config/nixpkgs` that points to the repository directory:

```bash
ln -s {path-to-repo} ~/.config/nixpkgs
```
6. Run `nix run . switch` in the repository directory.
7. Update iTerm's **Command** setting under the Profile tab to use the custom shell: `~/.nix-profile/bin/zsh`
8. Update the VSCode settings to use the ZSH managed by Nix:

```json
{
    "editor.inlineSuggest.enabled": true,
    "terminal.integrated.profiles.osx": {
        "Nix-managed ZSH": {
          "path": "/Users/pepibumur/.nix-profile/bin/zsh"
        }
    },
    "terminal.integrated.defaultProfile.windows": "Nix-managed ZSH"
}
```

## Troubleshooting

### Nix breaks on macOS updates

Add the following to the `/etc/zshrc` file:

```bash
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
```

## Useful commands

- `nix run . switch`: Run it whenever we change something in the home manager configuration.
- `nix flake update`: Update the programs in the dependency graph and reflect the updates in the lockfile.
