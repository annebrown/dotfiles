# Dev Env Config

## Description

Dev environment config for bare metal server, VM, container, cloud (GitPod, GitHub.dev).  

In conjunction with dotfiles-priv, includes dev env config on Linux, Android, Chromebook, Win11, RasPi, xOS, and iOS hosts.  

Also inludes project, stack, host, OS, and desktop-flavor overrides.  Pulls in scripts for configuring screen layouts, starting required services and configuring apps (vscode, vim, terminals, git, etc.).  Brings additional static assets, including images, network hosts, and frequently used scripts.

> This repo contains public config stuff.  Private config data (`/etc/hosts`, env vars, NAS config, etc.) is sourced from dotfiles-priv.

## Usage

Clone Repos:

```bash
sudo apt install -y stow
git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```

Link config files and dirs:

```bash
stow -d ~/.dotfiles bash vim vscode konsole hyper 
stow -d ~/.dotfiles-priv git nas ...
```

## Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
