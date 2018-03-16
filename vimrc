""""""""""""""""""""
"                  "
"   David Itkin    "
"                  "
""""""""""""""""""""

"
" PLUGIN MANAGERS
"

set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"
" PLUGINS
"
Plugin 'gmarik/Vundle.vim'

" Syntax Highlighters (self-explanatory)
Plugin 'pangloss/vim-javascript'
"Plugin 'isRuslan/vim-es6'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-scripts/python.vim'
Plugin 'posva/vim-vue'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-scripts/rainbow-end'              "Ruby block rainbow highlighting
Plugin 'muz/vim-gemfile'
Plugin 'hashivim/vim-vagrant'
Plugin 'vim-scripts/sh.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'mxw/vim-jsx'

" Navigation
Plugin 'kien/ctrlp.vim'                       "Go to file
Plugin 'vim-scripts/vtreeexplorer'            "Open tree explorer
Plugin 'mileszs/ack.vim'                      "Search text in dir ( recursive )

" Utility
Plugin 'bkad/CamelCaseMotion'                 "Move / select camel + snake
Plugin 'tpope/vim-surround'                   "Wrap selected text
Plugin 'ervandew/supertab'                    "Tab complete in Insert
Plugin 'scrooloose/nerdcommenter'             "Comment chunks of text
Plugin 'navicore/vissort.vim'                 "Sort visual block selection alphabetically
Plugin 'vim-scripts/indentpython.vim'         "Makes python not break all the time
Plugin 'jiangmiao/auto-pairs'                 "Insert, delete parens in pairs

" Selecting
Plugin 'terryma/vim-multiple-cursors'         "Select multiple occurrences of a word
Plugin 'terryma/vim-expand-region'            "Select increasingly bigger connected textforms

" Visual
Plugin 'bling/vim-airline'                    "The line at the bottom with info
Plugin 'airblade/vim-gitgutter'

" Theme
Plugin 'whatyouhide/vim-gotham'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'                       "Apparently holds vim together with duct tape

" Font
Plugin 'CodeFalling/vim-easyfont'             "TODO Find H4X0R Font

call vundle#end()
filetype plugin indent on

"
" KEY MAPS
"

" Set Leader
let mapleader = "["

" Search Code
:map <Leader>a :Ack!<Space>

" Insert Easier
:map <Space> i

" Explore Mode
:map E <Nop>
:map E :Explore

" Add Line
:map <CR> o<Esc>

" Splits
:map ` <Nop>
:map ` :vsp
:map `1 :sp

:noremap <Leader>q q

" Quit & Save
:map <Leader>w :w<CR>
:noremap q :q<CR>
:imap ∆ jj<Leader>w

" Paste Mode
:map π :set paste
:map πn :set nopaste<CR>

" Camel / Snake Case Move & Highlight
map ;w <Plug>CamelCaseMotion_w
map ;b <Plug>CamelCaseMotion_b
map ;e <Plug>CamelCaseMotion_e
map ;ge <Plug>CamelCaseMotion_ge
vmap ;w <Plug>CamelCaseMotion_w
vmap ;b <Plug>CamelCaseMotion_b
vmap ;e <Plug>CamelCaseMotion_e
vmap ;ge <Plug>CamelCaseMotion_ge

" Quit Visual Mode
:vmap mm <Esc>

" Move To End Of Line
:nnoremap e $
:vmap e $

" Search / Replace In Highlighted Area
:vmap <Leader>f :s/\%V

" Black Hole delete
:map <Leader>d "_d

" Navigate To Line # In One Key
:map - <Nop>
:map - gg

" Exit From Insert
:imap jj <Esc>l

" Move Between Splits
:nnoremap <C-j> <C-W><C-J>
:nnoremap <C-k> <C-W><C-K>
:nnoremap <C-l> <C-W><C-L>
:nnoremap <C-h> <C-W><C-H>

" Nerd Tree, man
:nmap <C-e> <Nop>
:nmap <C-e> :VTreeExplore

" Resize Split
:nmap [ :vertical resize +3
:nmap ] :vertical resize -3

" Remove All Empty Lines
:nmap ]r :g/^$/d

" Turn Off Pesky Syntax Errors
:map ß :SyntasticToggleMode<CR>

" Sort Highlighted Lines Alphabetically
:map <Leader>s :!sort

" Search And Replace Text Globally, AWESOMELY
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Search And Prepend Text
vnoremap <C-e> "hy:%s/\(<C-r>h\)/\1/gc<left><left><left><left><left>

" Search And Postpend Text
vnoremap <C-t> "hy:%s/\(<C-r>h\)/\1/gc<left><left><left>

" Copy Highlighted Text to System Clipboard
vmap <Leader>cp :w !pbcopy<CR><CR>

" Indent a block by one
:nmap <Leader>i <C-v>%I<Tab>jj

" Indent selection
:vmap <Leader>i I<Tab>jj

"
" AUTO-COMMANDS
"

" Autotrim Whitespace
au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Tab Sizes
au FileType * setlocal tabstop=2|set shiftwidth=2|set expandtab
au FileType elm setlocal tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab
au FileType html setlocal tabstop=4|set shiftwidth=4|set expandtab|set fo-=t
au FileType jade setlocal tabstop=4|set shiftwidth=4|set expandtab|set fo-=t
au FileType javascript setlocal tabstop=2|set shiftwidth=2|set expandtab
au FileType jade setlocal tabstop=4|set shiftwidth=4|set expandtab

" Remap some file types
au BufNewFile,BufRead *.json setf javascript
au BufEnter,BufRead *.conf setf dosini

"
" SETS
"
set expandtab
set backupdir=~/.vim/backup_files//
set dir=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
set number
set showcmd
set wildmenu
set wildmode=list:longest,full
set lazyredraw
set showmatch
set hlsearch
set splitright
set laststatus=2
set nopaste
set smartindent
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set fileformat=unix
set mouse=a
"
" PLUGIN CONFIG
"

" Make Ctrl-P Ignore Stuff + Go Fast
set wildignore+=*/.git/*,*/node_modules/*,*/coverage/*,*/dist/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor
let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'
let g:ctrlp_use_caching = 0
" Enable JSX support in JS files
let g:jsx_ext_required = 0

" Sets Too-Long-Line Marker
let &colorcolumn="100"

" Syntastic Checkers
let g:syntastic_puppet_checkers=['puppet', 'puppetlint']
let g:syntastic_ruby_checkers=['jruby', 'macruby', 'rubocop', 'rubylint', 'mri']
let g:syntastic_javascript_checkers=['jshint', 'jsl', 'jslint', 'jsxhint', 'mixedindentlint', 'standard']
let g:syntastic_java_checkers=['javac', 'checkstyle']
let g:syntastic_json_checkers=['jsonlint', 'jsonval']

" Syntastic Config
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_warning_symbol = "⚠"

" Airline
let g:airline_theme = 'dark'

" Awesome color
colorscheme jellybeans


" Ack search config
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Supertab colors
hi Search cterm=NONE ctermfg=red ctermbg=blue
hi Pmenu cterm=NONE ctermfg=magenta ctermbg=darkblue
hi PmenuSel cterm=NONE ctermfg=yellow ctermbg=darkgreen
hi PmenuSbar cterm=NONE ctermfg=none ctermbg=grey
hi PmenuThumb cterm=NONE ctermfg=darkgreen ctermbg=darkgreen


