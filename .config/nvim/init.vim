if empty(glob('~/.vim/autoload/plug.vim'))                                                                                               
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   endif
call plug#begin('~/.vim/plugged')
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'morhetz/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'airblade/vim-gitgutter'
Plug 'bpreservim/nerdtree'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc


    "Status-line
set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


nnoremap <F4> :vertical resize +2<CR>
nnoremap <F3> :resize -2<CR>
nnoremap <F5> :vertical resize -2<CR>

xnoremap K :move '<-2<CR>gv-gv
nnoremap <F2> :resize +2<CR> 
xnoremap J :move '>+1<CR>gv-gv

"General Settings
set encoding=UTF-8
filetype plugin indent on  "Enabling Plugin & Indent
syntax on  "Turning Syntax on
set autoread wildmode=longest,list,full
set spell spelllang=en_us
set backspace=indent,eol,start confirm
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab  
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set hls is ic
set laststatus=2 cmdheight=1
au BufRead,BufNewFile *.fountain set filetype=fountain
set splitbelow splitright 
set nobackup nowritebackup
set cursorline






set rtp+=~/tabnine-vim
autocmd vimenter * colorscheme gruvbox
"settersBEGIN
syntax on
set autoindent
set bg=dark
set relativenumber
"setterEND

"keybindBEGIN
"keybindEND
 
 
 
 filetype plugin on
"nerd tree con
nnoremap <F1> :let &mouse=(empty(&mouse) ? 'a' : '')<CR>
map <C-f> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree
