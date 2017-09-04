# Download My Dotfiles
git clone git@github.com:ditkin/dotfiles.git ~/dotfiles

# Download Vundle For Vim Plugin Management
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim

# Set Up Dirs For Those Annoying Vim Swapfiles
mkdir -p ~/dotfiles/vim/backup_files ~/dotfiles/vim/swap_files ~/dotfiles/vim/undo_files

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
