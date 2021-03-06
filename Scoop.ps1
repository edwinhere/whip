iwr -useb get.scoop.sh | iex
scoop install git
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add java
scoop install aria2
scoop install `
    7zip `
    curl `
    sudo `
    openssh `
    coreutils `
    grep `
    sed `
    less `
    python `
    ruby `
    wget `
    fzf `
    pwsh `
    extras/vcredist2019 `
    windows-terminal `
    ctags `
    ag `
    make `
    vim `
    mc `
    concfg `
    pshazz `
    docker `
    googlechrome-dev `
    ripgrep `
    extras/vcredist2015
sudo scoop install JetBrains-Mono

git config --global user.email "edwinhere@gmail.com"
git config --global user.name "Edwin Jose Palathinkal"

md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)

cp vimrc ~/vimfiles
cp gvimrc ~/vimfiles
cp _vimrc.local ~/vimfiles
cp _vimrc.local.bundle ~/vimfiles

vi +PlugInstall
