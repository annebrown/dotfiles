<!-- Basic Github Header: annebrown.ca -->
<div style="text-align: right"><a href="https://www.annebrown.ca">
	<img src="https://github.com/annebrown/dotfiles/blob/main/img/logos/logo-ab.png"  width="25"></a> annebrown.ca </div>
<div style="text-align: right"><sub><sub><a href="https://github.com/annebrown/?tab=repositories">
    Repo:</a> <a href="https://github.com/annebrown/dotfiles/">/dotfiles/</a><a href="README.md">README.md</a>
</sub></sub></div>

---
<!-- End of Header -->

# Dev Env Config

## Description

New dev env config on Linux,   Android, Chromebook, Win11, RasPi, xOS, and iOS.  See: 
 [Create New Dev Env](https://github.com/annebrown/docs-priv/blob/master/workflows/new-dev-envs/README.md).

Inludes project, stack, host, OS, app and desktop-flavor overrides.  Pulls in scripts for starting required services and apps.  


> This repo contains public config stuff.  Private config data (```/etc/hosts```, ```.ssh/config```, NAS config, etc.) is sourced from separate repos.


## Usage

Clone Repos:

```bash
$ sudo apt install -y stow
$ git clone https://github.com/annebrown/dotfiles.git ~/.dotfiles
$ git clone https://github.com/annebrown/dotfiles-priv.git ~/.dotfiles-priv

```
Link configs:

```bash
$ stow -d .dotfiles bash vim vscode hyper git
$ stow -d dotfiles-priv pkg1-priv pkg2-oriv pkg3-priv ...
```

# Related Links

[GNU Stow](https://www.gnu.org/software/stow/)

[XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)
