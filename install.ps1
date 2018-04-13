echo "Pulling from GitHub..."

git pull # Updates the directory before any installing

echo "Creating Symlinks..."

# Symlinks vimrc and gvimrc from dotfiles to correct location

cmd /c mklink "$HOME\_vimrc" "$HOME\dotfiles\vimrc"
cmd /c mklink "$HOME\_gvimrc" "$HOME\dotfiles\gvimrc"

md "$HOME\vimfiles\" | Out-Null
md "$HOME\vimfiles\autoload" | Out-Null

# Puts snippets in correct location

echo "Adding Snippets..."

md "$HOME\vimfiles\plugged\vim-snippets\UltiSnips" | Out-Null

Get-ChildItem "snippets\" |
Foreach-Object {
  $infile = $_.FullName
  $outfile = "$HOME\vimfiles\plugged\vim-snippets\UltiSnips\" + $_.Name

  cmd /c mklink $outfile $infile
}

# Download plugged

echo "Downloading Plugged..."

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$HOME\vimfiles\autoload\plug.vim"

echo "Done!"

gvim +PlugInstall +PlugClean! qa

cmd /c pause | Out-Null
