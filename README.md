# Configure Dev Env

  [My Public Repos](https://github.com/annebrown/?tab=repositories) > dotfiles >  README.md    

# Description

Configures my dev env on a new host (Android, Chromebook, Win11, RasPi).  Inludes stack, host, OS, app and desktop flavor overrides. Pulls in scripts for starting required services and apps.   This repo contains public config data.  Private config data is pulled from a separate repo. 

# Usage

Clone Repos

```bash

$ git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
$ git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```
# General Config

```bash
$ cd ~/.dotfiles
$ stow bash
$ stow vim
```

# Config From Priv Repo

```bash
$ cd ~/.dotfiles-priv
$ stow ["rqd pkgs from .dotfiles-priv/"]
```

## Apps

Example:

```bash
  stow krita
  stow VSCode
```
## Host-Specific

```bash
$ stow $HOSTNAME
```
Example, for anne@achromebook1, its Stow pkg looks like:
```
/home/anne/dotfiles-priv/ 
  Ubuntu20.04/  # OSs
  chromebook/
  krita/
  vscode/



  .bash_aliases_achromebook1 
  achromebook1/       
    other_chromebook1_files_and_dirs
```
```bash
$ stow achromebook1 
````
yields:
```
/home/anne/.bash_aliases_achromebook1
```
which is sourced by .bash_aliases:

```bash
if [ -f ~/.dotfiles-priv/achromebook1]; then
  rebash
fi
```



## Stack-Specific 
```bash
$ stow [mean|lamp|mern]
```
## OS-Specific 

```bash
$ stow userland # Android 
$ stow chromeos # Linux Dev Env
$ stow Ubuntu20.04 
$ stow Ubuntu18.3
$ stow wsl2 # Win11
$ stow raspi
```

## Desktops

```bash
$ stow [lxde | xfce]
```

# Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
