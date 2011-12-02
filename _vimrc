set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
" 挿入モードで入力中、様々な補完候補を元に自動的にポップアップ表示してくれる.
Bundle 'Shougo/neocomplcache' 
" Vim用のコマンドラインランチャー（Windowsで言えばfenrir、Macで言えばQuicksilver）のようなもの
Bundle 'Shougo/unite.vim'
" vim-ref は phpmanual 等のリファレンスをvim上で見るためのプラグインです。
Bundle 'thinca/vim-ref'
" プログラム実効プラグイン
Bundle 'thinca/vim-quickrun'
" required!
filetype plugin indent on
