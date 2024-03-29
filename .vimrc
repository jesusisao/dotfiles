" シェルを指定してください
set shell=/bin/zsh

" encoding
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256

" スワップファイルの作成先を変更
set noswapfile

" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed

" ビープ音を消す
set belloff=all

" 行番号系
set number

" タイトル系
set title

" インデント系
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet

" 挿入モードでバックスペース削除を有効
set backspace=indent,eol,start

" 検索するときに大文字小文字を区別しない
set ignorecase

" 小文字で検索すると大文字と小文字を無視して検索
set smartcase

" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan

" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch

" 検索した時にハイライト
set hlsearch

" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" 1 で行頭に移動
nnoremap 1 ^

" 2で行末に移動
nnoremap 2 $

" 9 で前のバッファタブへ
nnoremap <silent> 9 :bprev<CR>

" 0 で次のバッファタブへ
nnoremap <silent> 0 :bnext<CR>

" Option + | でファイル内の文字置換
nnoremap \ :%s/old/new/g<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

" 現在のバッファ削除
nnoremap bd :bd<CR>

" 括弧の補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" visulaモードでインデント調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

" 画面分割系
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" カラースキーム(任意)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
