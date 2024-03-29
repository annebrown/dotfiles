# Configure Dev Env

  [My Public Repos](https://github.com/annebrown/?tab=repositories) > dotfiles >  README.md    

# Description

New host configuration.  

Configures my dev env on a new host (Android, Chromebook, Win11, RasPi,xOS,iOS).   

Inludes stack, host, OS, app and desktop flavor overrides. 

Pulls in scripts for starting required services and apps.   

This repo contains public config stuff.  Private config stuff is pulled from a separate repo.

# Usage

Clone Repos

```bash

$ git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
$ git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```
Config

```bash
$ stow -d .dotfiles bash
$ stow -d .dotfiles vim
$ stow -d dotfiles-priv pkg1 pkg2 pkg3 ...
```

# Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
