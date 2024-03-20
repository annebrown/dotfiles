# Configure Dev Env

  [My Repos](https://github.com/annebrown/?tab=repositories) > dotfiles >  README.md    

# Description

Configures my dev env on a new host (Android, Chromebook, Win11, RasPi).  Inludes host-specific, OS-specific, desktop-specific overrides. Pulls in scripts for starting required services and apps.   This repo contains my public config data.  Private config data is located in a separate repo. 

# Usage

Clone Repo

```bash

$ git clone https://github.com/annebrown/dotfiles.git $My_Repos[\|/].dotfiles

```

General Config

```bash
$ cd ~/.dotfiles
$ stow bash
$ stow vim
$ stow git
$ stow vscode
$ stow xfce
```
OS-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles $HOSTNAME
```

OS-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles Android # | ChromeOS | Ubuntu20.04 | Ubuntu18.3 | Win11 | RasPi
```
Host-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles $HOSTNAME
```
# Desktop

```bash
$ stow lxde # | xfce 
```


## [bash](bash/README.md)

## [vim](vim/README.md)

## [Apps](apps/README.md)

# Related Links



[GNU Stow](https://www.gnu.org/software/stow/)

 [XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
