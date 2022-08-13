# Dotfiles

Contains config files that can be used across other systems.

## NOTES

- Terminal session will have to be restarted after running the symlink script to get zshrc and .gitconfig to apply
- Currently there is no checking in symlink for existing files.
- Symlink script written for bash, i.e., no support for PowerShell yet.

## TODO

- Symlink script is quite shaky and needs to be better.
    - Maybe look into using GNU stow to manage this better..?
- Look into using yadm
