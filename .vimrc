:syntax on
:set number

"#########################################
"# Vundle Plugins 			 #
"#########################################

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

" All of your Plugins must be added before the following line
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
filetype plugin indent on    " required


"#########################################
"# Visual Style / Theme 		 #
"#########################################

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

colorscheme molokai
"color desert

"#########################################
"# Coding Style			 	 #
"#########################################

set laststatus=2
set expandtab
set softtabstop=4
set shiftwidth=4


"#########################################
"# Other Bindings 			#
"#########################################

" Bind Ctrl-keys to move between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set timeoutlen=1000 ttimeoutlen=0

set backspace=indent,eol,start
"let mapleader = ","
"let g:mapleader = ","  
let mapleader = " "
let g:mapleader = " "  
map <Leader> <Plug>(easymotion-prefix)
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap gev :e $MYVIMRC<CR>
nnoremap gsv :so $MYVIMRC<CR>

"#########################################
"# Plugin Options 		         #
"#########################################

" Tagbar
"nnoremap <silent> <Leader>m :TagbarToggle<CR>
nnoremap <Leader>m :TagbarToggle<CR>

" NerdTree
nnoremap <Leader>q :NERDTreeToggle<CR>

" YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
