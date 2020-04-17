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


:let $TODAY = strftime('%Y%m%d')


" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
"  call dein#add('Shougo/defx.nvim')
"  if !has('nvim')
"    call dein#add('roxma/nvim-yarp')
"    call dein#add('roxma/vim-hug-neovim-rpc')
"  endif

  call dein#add('tpope/vim-surround')
  call dein#add('Lokaltog/vim-easymotion')
  call dein#add('justinmk/vim-sneak')
  call dein#add('vim-scripts/ReplaceWithRegister')
  call dein#add('bkad/CamelCaseMotion')

  call dein#add('mattn/emmet-vim')

  call dein#add('morhetz/gruvbox')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('hokaccha/vim-html5validator')

  call dein#add('Shougo/neocomplcache')
  call dein#add('Shougo/neocomplete.vim')

  call dein#add('mattn/webapi-vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('kannokanno/previm')
  call dein#add('AndrewRadev/splitjoin.vim')

  call dein#add('prettier/vim-prettier')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('HerringtonDarkholme/yats.vim')

  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')

  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('neoclide/coc.nvim')

  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')


  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable



" カラースキーマの設定
"colorscheme darcula
"colorscheme molokai
"colorscheme iceberg 
colorscheme gruvbox
set background=dark
syntax on

" matchit
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" vim-easymotion
" Disable default mappings
"let g:EasyMotion_do_mapping = 0
nmap <Leader>s <Plug>(easymotion-s2)
xmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t <Plug>(easymotion-t2)
" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'ASDFGHJKL;'
" Show target key with upper case to improve readability
let g:EasyMotion_use_upper = 1
" Jump to first match with enter & space
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1

" `JK` Motions: Extend line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" keep cursor column with `JK` motions
"let g:EasyMotion_startofline = 0
"" 任意文字数での検索
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)
" ハイライトの表示
hi EasyMotionTarget guifg=#80a0ff ctermfg=81
" /vim-easymotion

" CamelCaseMotion 
let g:camelcasemotion_key = '<leader>'
" /CamelCaseMotion 

" vim-airline/vim-airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'

" prettier
"let g:prettier#config#print_width = 100
let g:prettier#config#tab_width = 2
"let g:prettier#config#single_quote = 'true'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#trailing_comma = 'es5'

" vim-emmet
let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippet/snippets_reactnative.json')), "\n"))

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
imap <silent> <C-L><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
nmap <silent> <C-L><C-D> <ESC>i<C-R>=strftime("%Y-%m-%d")<CR><CR><ESC>
:command! CountChar :%s/.//gn
"自作テンプレートを読み込む
augroup templateload
    autocmd!
    autocmd BufNewFile *.md 0r ~/.vim/template/template.md
augroup END


