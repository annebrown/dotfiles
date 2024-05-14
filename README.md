r Configure Dev Env

## Description

New linux host config (Android, Chromebook, Win11, RasPi, xOS, iOS).  

Inludes stack, host, OS, app and desktop flavor overrides. 

Pulls in scripts for starting required services and apps.   

> [!NOTE]
> This repo contains public config stuff.  Private config stuff is sourced from separate repos.

## Usage

Clone Repos:

```bash

$ git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
$ git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```
Link files:

```bash
$ stow -d .dotfiles bash vim
$ stow -d dotfiles-priv pkg1 pkg2 pkg3 ...
```

## Next Steps

- [git config](https://github.com/annebrown/docs-priv/oses/linux/new-host-config/README.md)

- [ssh config](https://github.com/annebrown/docs-priv/oses/linux/ssh/ConfigureSSH.md)
# Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
