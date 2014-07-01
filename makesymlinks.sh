#!/bin/bash
#######################################
# This script creates symlinks from
# the home directory to any desired 
# dotfiles in ~/dotfiles
#######################################

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# list of files/folders to symlink in home directory
files="bashrc bash_profile profile vimrc gvimrc"

##########

# create dotfiles_old directory in home directory if it does not already exist
if [ ! -d $olddir ]; then
    echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
    mkdir -p $olddir
fi
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    if [ -f ~/.$file ]; then
        mv ~/.$file ~/dotfiles_old/
        echo "Moving ~/.$file to $olddir, and creating symlink to $file in home directory."
        ln -s $dir/$file ~/.$file
    fi
done
