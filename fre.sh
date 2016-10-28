git clone git@github.com:ditkin/dotfiles.git ~/dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim
mkdir -p ~/dotfiles/vim/backup_files ~/dotfiles/vim/swap_files ~/dotfiles/vim/undo_files
mkdir -p ~/dotfiles/vim/autoload ~/dotfiles/vim/bundle && \
curl -LSso ~/dotfiles/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/zsh-users/antigen.git ~/dotfiles/antigen
git clone git@github.com:ditkin/scm_breeze.git ~/dotfiles/scm_breeze
chsh -s $(which zsh)
sudo easy_install pip
sudo pip install thefuck

git config --global core.editor /usr/bin/vim

sh ~/dotfiles/install_script
vim +PluginInstall +qall
