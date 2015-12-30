git clone git@github.com:ditkin/dotfiles.git ~/dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim
mkdir -p ~/dotfiles/vim/autoload ~/dotfiles/vim/bundle && \
curl -LSso ~/dotfiles/vim/autoload/pathogen.vim https://tpo.po/pathogen.vim
git clone https://github.com/zsh-users/antigen.git ~/dotfiles/antigen
git clone git@github.com:ditkin/scm_breeze.git ~/dotfiles/scm_breeze
sudo easy_install pip
sudo pip install thefuck

git config --global core.editor /usr/bin/vim

sh ~/dotfiles/install_script
vim +PluginInstall +qall
