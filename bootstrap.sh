# Relink custo vim settings
rm ~/.vimrc
rm ~/.gvimrc
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# Relink custom dotfile extra
# Note that this must be executed from the macfiles folder for the link to work
rm ~/.extra
ln -s ./extra ~/.extra
