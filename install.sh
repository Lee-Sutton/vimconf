mkdir -p ~/.config/nvim/
mv ./init.vim ./ginit.vim ~/.config/nvim/
nvim +'PlugInstall --sync' +qa
