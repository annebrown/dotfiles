# Configure Bash

[My Repos](https://github.com/annebrown/?tab=repositories) > [dotfiles](../README.md) > bash > README.md 

# Description

Sets my prompts, colors, aliases, env vars, os and host-specific overrides, app shortcuts, cronjobs, wol, git shortcuts, tail logs, etc.

Also sets my host-specific startup scripts, including services (ssh, rdp, X11, etc.),   

# Usage

1. Clone Repo: [git@github.com:annebrown/dotfiles.git](https://github.com/annebrown/dotfiles.git) to ~/.dotfiles   

2. Configure .bash_aliases: 

```bash
[~] $ ln -s ~/.dotfiles/bash/.bash_aliases .bash_aliases     
```

2. Backup Prior to Editing

        Enter ;s  while editing in Vim.  This outputs a new backup file in the fmt:

            `bash_aliases_<date>_<time>_backup`