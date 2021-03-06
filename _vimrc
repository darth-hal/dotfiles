set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'sudo.vim'
"挿入モードで入力中、様々な補完候補を元に自動的にポップアップ表示してくれる.
Bundle 'Shougo/neocomplcache' 
"Vim用のコマンドラインランチャー（Windowsで言えばfenrir、Macで言えばQuicksilver）のようなもの
Bundle 'Shougo/unite.vim'
"vim-ref は phpmanual 等のリファレンスをvim上で見るためのプラグインです。
Bundle 'thinca/vim-ref'
"プログラム実効プラグイン
Bundle 'thinca/vim-quickrun'

"ruby
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-rails'

Bundle 'Ambient-Color-Scheme'

"JavaScript / node.js関連
" - 要設定？
Bundle 'pangloss/vim-javascript'
" - 設定不要
Bundle 'hallettj/jslint.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'jamescarr/snipmate-nodejs'
Bundle 'guileen/vim-node'

"web
"Bundle 'Better-CSS-Syntax-for-Vim'

" required!
filetype plugin indent on


"#################################
" JavaScript
"#################################
" - JSLintの色が見づらいのを修正
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=magenta

" - JavaScriptのフォーマット
au FileType javascript set ts=2 sw=2 expandtab number
au BufNewFile *.js set ft=javascript fenc=utf-8

"#################################
" Jade
"#################################
" - Jadeのフォーマット
au FileType jade set ts=2 sw=2 expandtab number
au BufNewFile *.jade set ft=jade fenc=utf-8


"#################################
" Global
"#################################
" - コメントの自動挿入をOFF
autocmd FileType * setlocal formatoptions-=ro

"#################################
" My Config
"################################
" - 行番号表示
set number
" - タブを空白
set expandtab
" - タブの幅
set tabstop=4
set softtabstop=4
" ヤンクをクリップボードへ送り込む
set clipboard+=unnamed
"ルーラーを表示
set ruler
set title

syntax enable

" #################################
" NeoComplCache Setting
" #################################
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" For cursor moving in insert mode(Not recommended)
inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
 

