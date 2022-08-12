#!/bin/bash

# TODO: Make this better
# I want to find a bettwer way than pwd and hardcoded HOME for creating the symlinks
# also add checks to see if 
#   A) the link path exists
#   B) the target path doesn't exist

symlinks=(
    "/zsh/.zshrc "
    "/nvim /.config/nvim" 
    "/tmux /.config/tmux" 
    "/git/.gitconfig "
)

for i in "${symlinks[@]}"
do
    set -- $i
    echo Creating symlink for $HOME$2 to $(pwd)$1
    ln -s "$(pwd)$1" "$HOME$2"
done
