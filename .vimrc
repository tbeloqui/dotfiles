set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Bundle 'schickling/vim-bufonly'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-endwise'
Bundle 'terryma/vim-expand-region'
Bundle 'matze/vim-move'
Bundle 'tomtom/tcomment_vim'
Bundle 'Chiel92/vim-autoformat'
Bundle 'rking/ag.vim'
Bundle 'qstrahl/vim-matchmaker'
Bundle 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-eunuch'
Plugin 'itchyny/lightline.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'rr-/vim-hexdec'
call vundle#end()

let mapleader=","
map <Leader>f :Autoformat<CR>
nnoremap <silent> <Leader><Up> :exe "resize -5"<CR>
nnoremap <silent> <Leader><Down> :exe "resize +5"<CR>
nnoremap <silent> <Leader><Left> :exe "vertical resize -5"<CR>
nnoremap <silent> <Leader><Right> :exe "vertical resize +5"<CR>

map <Leader>c :TComment<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>o :CtrlP .<CR>
nmap <Leader><Leader> V

nnoremap <Leader>w :close<CR>
nnoremap <Leader>h :split<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>u :edit!<CR>
nnoremap <Leader>n :new<CR>
nnoremap <Leader>e :Errors<CR>

filetype plugin indent on
set background=light
colorscheme PaperColor
syntax enable

set number
set cursorline
set laststatus=2
set backspace=2
set path+=**
set autoindent
set smartindent
set cindent
set nobackup
set noswapfile
set hidden
set scrolloff=5
set term=screen-256color
set t_Co=256
let g:netrw_liststyle=3
let g:lightline = { 'colorscheme': 'PaperColor' }
let g:airline_theme='papercolor'
set softtabstop=4 shiftwidth=4 tabstop=4 expandtab
set guioptions-=L
set guioptions-=T
set guioptions-=r
set hlsearch
set incsearch
set smarttab
set copyindent
set wildmenu

let g:move_key_modifier = 'C'

let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'find %s -type f'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.build,.build-pexdev,*.git

set clipboard=unnamedplus " use the +clipboard,:echo has("clipboard") to be sure you have the feature. allows to copy/pase with ^C and ^V

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:autoformat_verbosemode=0
let g:formatdef_gstindent_c = '"/home/tulio/Develop/pexip/mcu/media/gst-plugins-pex/common/gst-indent"'
let g:formatters_c = ['gstindent_c']

au BufRead,BufNewFile *.h set filetype=c
