<!-- Basic Github Header: annebrown.ca -->
<div style="text-align: right">
<a href="https://www.annebrown.ca">
	<img src="static/img/logo-ab.png"  width="30" style="text-decoration: none;"></a>annebrown.ca </div>
<div style="text-align: right"><sub><sub>
    <a href="https://github.com/annebrown/?tab=repositories">
    My Repos:</a> <a href="https://github.com/annebrown/dotfiles/">/dotfiles/</a><a href="README.md">README.md</a>
</sub></sub></div>

---
<!-- End of Header -->

# Config Dev Env

## Description

New linux host config on Android, Chromebook, Win11, RasPi, xOS, and iOS.  See [Create New Dev Env](https://github.com/annebrown/docs-priv/blob/master/workflows/new-dev-envs/README.md).

Inludes project, stack, host, OS, app and desktop-flavor overrides.  Pulls in scripts for starting required services and apps.  


> This repo contains public config stuff.  Private config stuff is sourced from separate repos.


## Usage

Clone Repos:

```bash

$ git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
$ git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```
Link configs:

```bash
$ stow -d .dotfiles bash vim
$ stow -d dotfiles-priv pkg1-priv pkg2-oriv pkg3-priv ...
```

# Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
