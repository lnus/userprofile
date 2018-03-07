ln -s "$HOME/dotfiles/vimrc" "$HOME/.vimrc"

mkdir "$HOME/.vim"
mkdir "$HOME/.vim/autoload"

wget "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -O "$HOME/.vim/autoload/plug.vim"

vim +PlugInstall +PlugClean! qa
