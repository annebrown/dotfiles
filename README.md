# Dev Env Config

## Description

Dev Env Config for bare metal server, VM, container, GitHub.dev, GitPod, etc.  

In conjunction with dotfiles-priv, includes dev env config on Linux, Android, Chromebook, Win11, RasPi, xOS, and iOS hosts.  

Also inludes project, stack, host, OS, and desktop-flavor overrides.  Pulls in scripts for configuring and starting required services and apps (vscode, vim, terminals, git, etc.).  Also brings other static assets, including images, local network hosts, and frequently used scripts.


> This repo contains public config stuff.  Private config data (`/etc/hosts`, `.ssh/config`, NAS config, etc.) is sourced from separate repos.


## Usage

Clone Repos:

```bash
$ sudo apt install -y stow
$ git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
$ git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```
Link configs:

```bash
$ stow -d .dotfiles bash vim vscode hyper 
$ stow -d dotfiles-priv git vscode pkg3-priv ...
```

# Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
