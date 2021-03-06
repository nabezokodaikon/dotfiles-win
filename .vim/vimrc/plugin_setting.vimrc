"--------------------------------
" プラグイン設定 
"--------------------------------

" nerdcommenter
"--------------------------------
" コメントの間にスペースを開ける
let NERDSpaceDelims = 1
nmap <Leader>c <Plug>NERDCommenterToggle
vmap <Leader>c <Plug>NERDCommenterToggle

" vim-easymotion
"--------------------------------
" デフォルトのキーマッピングを無効化する。
let g:EasyMotion_do_mapping = 0
" 大文字、小文字を区別しない。
let g:EasyMotion_smartcase = 1
" 2文字のキーワード検索のみを有効化する。
nmap <Leader>s <Plug>(easymotion-s2)

" vim-gista
"--------------------------------
let g:gista#client#default_username = 'nabezokodaikon'
