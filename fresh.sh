git clone git@github.com:ditkin/dotfiles.git ~/dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim
git clone https://github.com/zsh-users/antigen.git ~/dotfiles/antigen

sh ~/dotfiles/install_script
vim +PluginInstall +qall
