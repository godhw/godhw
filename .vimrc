" plug-in setting
call plug#begin('~/.vim/plugged')

" plug-in
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'

Plug 'preservim/tagbar'

Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" Editor
"
" Syntax Highlighting
if has("syntax")
  syntax on
endif
 
" new lines inherit the indentation of previous lines
set autoindent

" c auto indent
set cindent

" numbering line
set number relativenumber

" hightlight matching parenthesis
set showmatch

" highlighting search
set hlsearch

" ignore case when searching
set ignorecase

" increase string when searching
set incsearch

" find exact string when search upper
set smartcase

" use an encoding that supports unicode
set encoding=utf-8

" always display the status bar
set laststatus=2

" status line config
" set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" show commend
set showcmd

" Tab to space
set expandtab

" Tab to space = 2
set tabstop=2

" >> << to space = 2
set shiftwidth=2

" delete 2 space (recongize 2 space = 1 tab)
set softtabstop=2

" open files no fold
set nofoldenable

" set cursor
set ruler
set cul

" set cursor in last modified point
au BufReadPost * 
\ if line("'\"") > 0 && line("'\"") <= line("$") | 
\ exe "norm g`\"" | 
\ endif

" vim indent guides
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
