# Dotfiles - Mostly vim for now. ;)

## Windows

Simplest way to install for Windows is using this semi-dirty PowerShell script. Make sure you run it as admin.

When you start gVim after letting the script finish, all should be well. 

(You might get a colorscheme error when starting, but just ignore that for now. Might fix that later?)

```powershell
git clone https://github.com/lnus/dotfiles.git $HOME\dotfiles

cmd /c mklink _vimrc "$HOME\dotfiles\vimrc"
cmd /c mklink _gvimrc "$HOME\dotfiles\gvimrc"

mkdir $HOME\vimfiles\
mkdir $HOME\vimfiles\autoload

Invoke-WebRequest -Uri https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -OutFile "$HOME\vimfiles\autoload\plug.vim"

gvim +PlugInstall +PlugClean! qa
```

## Caps lock to ESC

I previously used an AutoHotKey script to change my Caps-Lock key to be used as an Escape key, however I now use [SharpKeys](https://github.com/randyrants/sharpkeys).

## Font

The font I use can be downloaded from [HERE](https://github.com/sgolovine/PlexNerdfont)!
