<!-- Basic Github README.MD Header -->
 <div style="text-align: right;"> 
 <a href="https://annebrown.ca"><img src="img/logo.svg" width="20"/></a> annebrown.ca</div><div style="text-align: right;"><small><a href="https://github.com/annebrown/?tab=repositories" >MyRepos</a>/dotfiles/README.md</small></div>
<!-- End of Header -->

# Configure Dev Env


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
