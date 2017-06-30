"""""""""""""""""""""""""""""""""""""""
" VIM PLUGIN MANAGEMENT CONFIGURATION "
"""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""""
" 	  BASIC CONFIRGUATION	      "
"""""""""""""""""""""""""""""""""""""""
syntax on
set guifont=Monofur\ for\ Powerline\ 12
colorscheme molokai
let g:rehash256 = 1
set t_Co=256
set nu
set hlsearch
set incsearch
set autoindent
set list
set listchars=tab:>-,trail:-
set autochdir
set tags=tags
if has("gui_running")
set guioptions-=m " 隐藏菜单栏
set guioptions-=T " 隐藏工具栏
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=r " 隐藏右侧滚动条
set guioptions-=b " 隐藏底部滚动条
set showtabline=0 " 隐藏Tab栏
endif
"""""""""""""""""""""""""""""""""""""""
"        AIRLINE CONFIGURATION        "
"""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
"""""""""""""""""""""""""""""""""""""""
"       NERDTREE CONFIGURATION        "
"""""""""""""""""""""""""""""""""""""""
map <C-a> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"""""""""""""""""""""""""""""""""""""""
"         TAGBAR CONFIRATION	      "
"""""""""""""""""""""""""""""""""""""""
map <C-b> :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""
"        SYNTASTIC CONFIGURATION      "
"""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_c_include_dirs = [ 
"            \ '/home/sammy/workspace/hostapd-2.5/src',
"            \ '/home/sammy/workspace/hostapd-2.5/src/utils']
"""""""""""""""""""""""""""""""""""""""
"        GITGUTTER CONFIGURATION      "
"""""""""""""""""""""""""""""""""""""""
set updatetime=250
let g:gitgutter_sign_column_always = 1

vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-s> c<ESC>"+p
imap <C-s> <C-r><C-o>+
nmap <C-s> "+p
