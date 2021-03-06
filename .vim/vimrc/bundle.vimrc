"--------------------------------
" neobundle で管理しているプラグインを読み込む
"--------------------------------
set nocompatible

filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" start plugins

" プラグイン管理
NeoBundle 'https://github.com/Shougo/neobundle.vim.git'

" vimproc
NeoBundle 'https://github.com/Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" unite.vim
NeoBundle 'https://github.com/Shougo/unite.vim.git'

" neomru.vim
NeoBundle 'https://github.com/Shougo/neomru.vim.git'

" unite-outline
NeoBundle 'https://github.com/Shougo/unite-outline.git'

" auto-ctags.vim
NeoBundle 'https://github.com/soramugi/auto-ctags.vim.git'

" emmet-vim
NeoBundle 'https://github.com/mattn/emmet-vim.git'

" surround.vim
" テキストを囲ったり、囲いを外したりするプラグイン。
NeoBundle 'https://github.com/tpope/vim-surround.git'

" コメントアウト
NeoBundle 'https://github.com/scrooloose/nerdcommenter.git'

" Color Scheme
NeoBundle 'https://github.com/nanotech/jellybeans.vim.git'

" submode.vim
" ユーザが自由にサブモードを定義できるプラグイン。
" タブ操作をカスタマイズするのに使用している。
NeoBundle 'https://github.com/kana/vim-submode.git'

" タブごとにカレントディレクトリを切り替える。
NeoBundle 'https://github.com/kana/vim-tabpagecd.git'

" vim 上で git を操作する。
NeoBundle 'https://github.com/tpope/vim-fugitive.git'

" vim のカーソル移動を便利にする。
NeoBundle 'https://github.com/easymotion/vim-easymotion.git'

" vimでgistを操作する。
NeoBundle 'https://github.com/lambdalisue/vim-gista.git'

" unite.vimでvim-gistaを使用する。
NeoBundle 'https://github.com/lambdalisue/vim-gista-unite.git'

" end plugins
call neobundle#end()

filetype plugin indent on
