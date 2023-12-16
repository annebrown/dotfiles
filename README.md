# Configure My Dev Environments

  [My Repos](https://github.com/annebrown/?tab=repositories) > dotfiles >  README.md    

# Description

This project configures my dev env on fresh OSs.  It also contains scripts for starting required services and apps.   This repo contains my public config data.  Private config data is located in a separate repo. 

# Usage

Clone Repo

```bash

$ git clone https://github.com/annebrown/dotfiles.git ~/dotfiles

```

General Config

```bash
$ cd ~/.dotfiles
$ stow bash
$ stow vim
$ stow lxde # | xfce
$ stow 
```

Host-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles $HOSTNAME
```

OS-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles Ubuntu20.04 # | Ubuntu18.3
```

Flavors



```bash
$ stow -t ~ --override=. --dotfiles $HOSTNAME
```

Flavors

```bash
$ stow lxde # | xfce 
```



## [bash](bash/README.md)

## [vim](vim/README.md)

## [Apps](apps/README.md)

# Related Links



[GNU Stow](https://www.gnu.org/software/stow/)

 [XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)