#!/bin/bash
#######################################
# This script creates symlinks from
# the home directory to any desired
# dotfiles in ~/dotfiles
#######################################

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# list of files to symlink in home directory
files="bash_profile bashrc display gitconfig minttyrc profile vimrc vim" # gvimrc

# list of folders to symlink in home directory
#folders="vim"

##########

# create dotfiles_old directory in home directory if it does not already exist
if [ ! -d $olddir ]; then
    echo "Creating $olddir for backup of any existing dotfiles in ~"
        echo
    mkdir -p $olddir
fi
echo

# move any existing files/folders in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "file $file"
        if [ -L ~/.$file ]; then
            rm -f ~/.$file
            echo "Symbolic link ~/.$file already exists; deleting link."
        elif [ -f ~/.$file ]; then
            mv ~/.$file ~/dotfiles_old/
            echo "Moving ~/.$file to $olddir."
        fi
        echo "Creating symbolic link ~/.$file to $dir/$file."
        ln -s $dir/$file ~/.$file
    echo 
done
