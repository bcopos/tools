" Vundle (Vim Bundle Manager)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on


set number
set t_Co=256
syntax on
set ts=4
set shiftwidth=4
set expandtab
":set spell spelllang=en_us

" Use case insensitive search
set ignorecase
set smartcase

" Search as characters are entered
set incsearch

" Highlight search matches
set hlsearch


" Allow backspacing over autoindent
set backspace=indent,eol,start

set autoindent

set visualbell

set cursorline
highlight CursorLine ctermbg=Black cterm=None ctermfg=White
set cursorcolumn
highlight CursorColumn ctermbg=Black


" Airline stuff
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

" Enable plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-airline
