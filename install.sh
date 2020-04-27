mkdir ~/.config
mkdir ~/.config/nvim  # intentionally fails if directory exists
mv ./init.vim ./ginit.vim ~/.config/nvim/
nvim +'PlugInstall --sync' +qa
