git pull # Updates the directory before any installing

cmd /c mklink "$HOME\_vimrc" "$HOME\dotfiles\vimrc"
cmd /c mklink "$HOME\_gvimrc" "$HOME\dotfiles\gvimrc"

mkdir "$HOME\vimfiles\"
mkdir "$HOME\vimfiles\autoload"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$HOME\vimfiles\autoload\plug.vim"

gvim +PlugInstall +PlugClean! qa
