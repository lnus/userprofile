#!/bin/bash

# make sure directory path is ok when script is started from anywhere
MYDIR="$(dirname -- "$0")"

# .vimrc install
cp $MYDIR/vimrc ~/.vimrc

# nvim install
rm -rf ~/.config/nvim || true
cp -r $MYDIR/nvim ~/.config/nvim

# Install coc extensions
nvim -c +PlugInstall +qall
nvim -c 'CocInstall -sync coc-python coc-json coc-html coc-css coc-tsserver coc-prettier coc-go coc-styled-components coc-graphql|q' +qall

# .zshrc install
cp -r $MYDIR/zshrc ~/.zshrc

echo "dotfiles installed"
