# Download My Dotfiles
git clone git@github.com:ditkin/dotfiles.git ~/dotfiles

# Download Vundle For Vim Plugin Management
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim

# Download Pathogen For Some Other Vim Plugin Management
mkdir -p ~/dotfiles/vim/backup_files ~/dotfiles/vim/swap_files ~/dotfiles/vim/undo_files
mkdir -p ~/dotfiles/vim/autoload ~/dotfiles/vim/bundle && \
curl -LSso ~/dotfiles/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Download Antigen For Zsh Config Management
git clone https://github.com/zsh-users/antigen.git ~/dotfiles/antigen

# Download scm_breeze For Pretty Git
git clone git@github.com:ditkin/scm_breeze.git ~/dotfiles/scm_breeze

# Set Shell To Zsh
chsh -s $(which zsh)

# Set Vim To System Default Editor
git config --global core.editor /usr/bin/vim

# Run Installation Script To Do The Rest
sh ~/dotfiles/install_script

# Install Vim Plugins
vim +PluginInstall +qall
