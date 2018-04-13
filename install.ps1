param(
  [switch] $RERUN = $false)

if(-Not $RERUN){
  echo "Pulling from GitHub..."

  git pull # Updates the directory before any installing

  echo "Creating Symlinks..."

# Symlinks vimrc and gvimrc from dotfiles to correct location

  cmd /c mklink "$HOME\_vimrc" "$HOME\dotfiles\vimrc"
  cmd /c mklink "$HOME\_gvimrc" "$HOME\dotfiles\gvimrc"

  md "$HOME\vimfiles\" | Out-Null
  md "$HOME\vimfiles\autoload" | Out-Null

# Download plugged

  echo "Downloading Plugged..."

  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$HOME\vimfiles\autoload\plug.vim"

  echo "Installing plugins..."

  gvim +PlugInstall +PlugClean!
}

# Puts snippets in correct location (doesn't work on first run)

$SNIPPETS = "$HOME\vimfiles\plugged\vim-snippets\UltiSnips"

if(Test-Path -Path $SNIPPETS){
  echo "Adding snippets..."

  Get-ChildItem "snippets\" |
  Foreach-Object {
    $infile = $_.FullName
    $outfile = $SNIPPETS + "\" + $_.Name

    cmd /c mklink $outfile $infile
  }
  $RERUN = $false
} else {
  $RERUN = $true
  Start-Sleep -s 1
}

if($RERUN){
  & .\install.ps1 -RERUN $true
}

echo "Finished!"

cmd /c pause | Out-Null
