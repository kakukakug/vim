set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932

set nocompatible
set number

set expandtab
set tabstop=4
set autoindent
set shiftwidth=4

set cursorline
set ruler
set laststatus=2

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[<]
set scrolloff=8
set sidescrolloff=10

set confirm
set autoread
set hlsearch
set incsearch
set ignorecase
set wrapscan
set wildmenu wildmode=list:longest,full
set history=1000
set clipboard=unnamed,unnamedplus
set mouse=a
set shellslash
set nf=""

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'tomasr/molokai'

NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'blueshirts/darcula'

filetype plugin indent on
NeoBundleCheck
call neobundle#end()

syntax on
"colorscheme molokai
set background=dark
if ($ft=='ruby')
  colorscheme molokai
else
  colorscheme darcula
endif
