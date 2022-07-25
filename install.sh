#!  /bin/bash

DOTFILES = (.bash_profile .gitconfig)

# Remove old dot files and replace them
for    dotfile in $(echo ${DOTFILES[*]});
do
        rm ~/$(echo $dotfile)
    ln -s ~/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
