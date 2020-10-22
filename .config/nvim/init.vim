" nvim 基本設定
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932
set visualbell

set number

set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4

set autoindent

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
set smartcase
set wrapscan

set wildmenu wildmode=list:longest,full
set history=1000
set clipboard=unnamed,unnamedplus
set mouse=a
set shellslash
set nf=""
set list listchars=tab:>-,trail:_

set ambiwidth=double
let &grepprg="grep -rnIH --exclude=.git --exclude-dir=.hg --exclude-dir=.svn --exclude=tags"

" <leader>デフォルトはバックスラッシュ
" 変更が必要なら以下で上書きする space
let mapleader = "\<Space>"

" 拡張子のインデント・タブの設定
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.md setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.txt setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.js setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2 
    autocmd BufNewFile,BufRead *.ts setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2 filetype=typescript
    autocmd BufNewFile,BufRead *.tsx setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2 filetype=typescript
    autocmd BufNewFile,BufRead *.html setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.json setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2 conceallevel=0
augroup END

" 折りたたみ設定
augroup fileTypeFold
    autocmd!
    autocmd BufNewFile,BufRead *.tsx setlocal foldmethod=syntax foldlevel=1 
augroup END

" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'
  let s:toml_lazy = s:rc_dir . '/dein_lazy.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}

filetype plugin indent on
syntax enable

"colorscheme 
"colorscheme darcula
"colorscheme molokai
"colorscheme iceberg 
colorscheme gruvbox
set background=dark
syntax on

" ファイルによるカラースキーマ設定上書き
augroup fileTypeColorScheme
    autocmd!
    autocmd BufNewFile,BufRead *.py colorscheme gruvbox
    autocmd BufNewFile,BufRead *.rb colorscheme gruvbox
    autocmd BufNewFile,BufRead *.md colorscheme gruvbox
    autocmd BufNewFile,BufRead *.txt colorscheme gruvbox
augroup END

" matchit
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1

" netrw
let g:netrw_liststyle=1
let g:netrw_banner=0
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d %H:%M:%S"
let g:netrw_preview=1

" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

"自作のコマンド郡
:let $TODAY = strftime('%Y%m%d')
imap <silent> <C-L><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
nmap <silent> <C-L><C-D> <ESC>i<C-R>=strftime("%Y-%m-%d")<CR><CR><ESC>
:command! CountChar :%s/.//gn
"自作テンプレートを読み込む
augroup templateload
    autocmd!
    autocmd BufNewFile *.md 0r ~/.vim/template/template.md
augroup END



