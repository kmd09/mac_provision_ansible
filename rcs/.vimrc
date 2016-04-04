"-------------------
" Neo Bundle
"-------------------

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" NERDTREE
NeoBundle 'scrooloose/nerdtree'
" toggle comment
NeoBundle 'tomtom/tcomment_vim'
" command for rails
NeoBundle 'tpope/vim-rails'
" insert end for rails
NeoBundle 'tpope/vim-endwise'
" unite
NeoBundle 'Shougo/unite.vim'
" auto close ()
NeoBundle 'Townk/vim-autoclose'
" vimtools for Go lang
NeoBundle 'fatih/vim-go'
" vimproc
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
" visualize indent
NeoBundle 'nathanaelkane/vim-indent-guides'
" markdown preview
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
" quickrun
NeoBundle 'thinca/vim-quickrun'

" コード補完
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'marcus/rsense'
NeoBundleLazy 'supermomonga/neocomplete-rsense.vim', { 'autoload' : {
  \ 'insert' : 1,
  \ 'filetypes': 'ruby',
  \ }}

" メソッド定義元へのジャンプ
NeoBundle 'szw/vim-tags'

" Markdown to Tex
NeoBundle 'pakacho/Md2Tex4V'

"My Colors here
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" -----------------
" End Neo Bundle
" -----------------
call neobundle#end()


"--------------------
" 基本的な設定
"--------------------
" colorscheme
colorscheme jellybeans
if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

"新しい行のインデントを現在行と同じにする
set autoindent

"クリップボードをMacと連携する
set clipboard=unnamed,autoselect

"スワップファイル,バックアップ無効化
set nowritebackup
set nobackup
set noswapfile

"タブ幅を半角スペース2つ分に(通常8)
set softtabstop=2

"自動インデントの幅をスペース2つ分に
set shiftwidth=2

"ファイル内でタブが意味するスペース数。互換性のため8
set tabstop=4

"タブの代わりに空白文字を指定する
set expandtab

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

"新しい行を作った時に高度な自動インデントを行う
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>


"カーソルを行頭行末で止まらないように
set whichwrap=b,s,h,l,<,>,[,]

" 行頭のTAB文字を可視化
highlight TabString ctermbg=red guibg=red
au BufWinEnter * let w:m2 = matchadd("TabString", '^\t+')
au WinEnter * let w:m2 = matchadd("TabString", '^\t+')

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')

"入力モードのとき素早くjjでESC
inoremap <silent> jj <ESC>
inoremap <silent> っｊ <ESC>

"文字コードの自動判別
set encoding=utf-8
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileencodings=utf-8

set backspace=indent,eol,start

"検索で大文字小文字を区別しない
set ignorecase
"大文字が検索文字列に入っていれば区別
set smartcase

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 日本語向け行移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" モードによってカーソル形状変化
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"DBをMySQLに
let g:sql_type_default='mysql'

"FOR PHP
let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_noShortTags = 1
let php_parent_error_close = 1

" insert modeで開始
let g:unite_enable_start_insert = 1

" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" vim-indent-guides
" Vim 起動時 vim-indent-guides を自動起動
let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level=2
" 自動カラー無効
let g:indent_guides_auto_colors=0
" 奇数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black
" 偶数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
" ガイドの幅
let g:indent_guides_guide_size = 1

"余計な行末の削除
autocmd BufWritePre * :%s/\s\+$//ge

"setting for go lang
let g:go_bin_path = expand("~/go/bin")

exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

" key bind for omni
imap <C-f> <C-x><C-o>

" for coffee script
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee

" for markdown
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown

" setting for golint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

"================================================================================
" quickrun settings
"================================================================================
let g:quickrun_config = {}
let g:quickrun_config._ = {'runner' : 'vimproc', "runner/vimproc/updatetime" : 10}
let g:quickrun_config['ruby.rspec'] = {'command': 'rspec', 'cmdopt': '-cfd'}

augroup QRunRSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END

nnoremap [quickrun] <Nop>
nmap <Space>k [quickrun]
nnoremap <silent> [quickrun]r :call QRunRspecCurrentLine()<CR>
fun! QRunRspecCurrentLine()
  let line = line(".")
  exe ":QuickRun -exec '%c %s%o' -cmdopt ':" . line . " -cfd'"
endfun

nnoremap <Space>o :only<CR>
nnoremap <Space>r :QuickRun <input.txt<CR>

" -------------------------------
" Rsense
" -------------------------------
let g:rsenseHome = '/usr/local/Cellar/rsense/0.3/libexec'
let g:rsenseUseOmniFunc = 1

" --------------------------------
" neocomplete.vim
" --------------------------------
let g:acp_enableAtStartup = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'

" setting for previm
au FileType markdown nmap <Leader>p :PrevimOpen<CR>

