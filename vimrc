" Turn all of this off for pathogen to be safe.
filetype off
filetype plugin indent off

" Pathogen
execute pathogen#infect()

" Turn that back on
filetype plugin indent on
syntax on

" Leader
let mapleader=","

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'benmills/vimux'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim' 
Plugin 'airblade/vim-gitgutter'
Plugin 'rodjek/vim-puppet'
Plugin 'whatyouhide/vim-gotham'
Plugin 'vim-scripts/rainbow-end'
Plugin 'vim-scripts/sh.vim'
Plugin 'skalnik/vim-vroom'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-expand-region'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/vtreeexplorer' 

call vundle#end()

" Tell vim to remember certain things when we exit
" '10  :  marks will be remembered for up to 10 previously edited files
" "100 :  will save up to 100 lines for each register
" :20  :  up to 20 lines of command-line history will be remembered
" %    :  saves and restores the buffer list
" n... :  where to save the viminfo files
set viminfo='100,\"100,:20,%,n~/.viminfo

" Map
:map E <Nop>
:map E :Explore
:map <Tab> <Nop>
:map <Tab> :vsp
:map <S-Tab> :sp
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>
:map <Leader> :w
:map < :q
:vmap jj <Esc>
:nnoremap e $
:nnoremap <Space> i
:map - <Nop>
:map - gg
:imap jj <Esc>l
:map <M-s> :w<kEnter>
:imap <M-s> <Esc>:w<kEnter>i
:nnoremap <C-j> <C-W><C-J>
:nnoremap <C-k> <C-W><C-K>
:nnoremap <C-l> <C-W><C-L>
:nnoremap <C-h> <C-W><C-H>
:nnoremap ƒ :%s/
:vmap ƒ :s/\%V
:nmap <C-e> <Nop> 
:nmap <C-e> :VTreeExplore
:nmap [ :vertical resize 
:nmap ] :res

"sets random stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backupdir=~/.vim/backup_files//
set dir=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
set expandtab
set number
set showcmd
set wildmenu
set lazyredraw
set showmatch
set hlsearch
set splitright
set splitbelow
set laststatus=2
set nopaste
set smartindent
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Remove trailing whitespace
autocmd FileType python,ruby autocmd BufWritePre * :%s/\s\+$//e
match Todo /\s\+$/

"Syntastic Checkers
let g:syntastic_puppet_checkers=['puppet', 'puppetlint']
let g:syntastic_ruby_checkers=['jruby', 'macruby', 'rubocop', 'rubylint', 'mri']
let g:syntastic_javascript_checkers=['jshint', 'jsl', 'jslint', 'jsxhint', 'mixedindentlint', 'standard']

" Lets
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_warning_symbol = "⚠"
let g:airline_theme = 'dark'

:color gotham

autocmd BufNewFile,BufRead *.json set ft=javascript
