


<!-- Basic Github Header: annebrown.ca -->
<a href="https://www.annebrown.ca"><img src="static/img/logo-ab.png" width="20" style="text-decoration: none;"/></a>annebrown.ca  
<sub><sub><a href="https://github.com/annebrown/?tab=repositories">
    My Repos:</a> <a href="https://github.com/annebrown/dotfiles/">dotfiles/</a>README.md
</sub></sub>

---
<!-- End of Header -->

# Configure Dev Env

## Description

New host config (Android, Chromebook, Win11, RasPi, xOS, iOS).  

Inludes stack, host, OS, app and desktop flavor overrides. 

Pulls in scripts for starting required services and apps.   

This repo contains public config stuff.  Private config stuff is sourced from separate repos.

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
