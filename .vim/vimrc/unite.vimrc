"--------------------------------
" unite.vim 設定 
"--------------------------------
" プレフィックスを <Space>u にする
nnoremap [unite] <Nop>
nmap     <Space>u [unite]

" file_rec/asyncとfile_rec/gitを自動的に切り換える
function! DispatchUniteFileRecAsyncOrGit()
  if isdirectory(getcwd()."/.git")
    Unite -start-insert file_rec/git file/new -buffer-name=file
  else
    Unite -start-insert file_rec/async file/new -buffer-name=file
  endif
endfunction

" 各種表示
" ファイル一覧 or git 管理ファイル一覧
nnoremap <silent> [unite]f :<C-u>call DispatchUniteFileRecAsyncOrGit()<CR>
" 最近開いたファイル一覧
nnoremap <silent> [unite]h :<C-u>Unite -start-insert file_mru<CR>
" ディレクトリ一覧
nnoremap <silent> [unite]d :<C-u>Unite -start-insert directory_rec/async<CR>
" バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
" アウトライン
nnoremap <silent> [unite]o :<C-u>Unite outline -no-start-insert<CR>
" タブ一覧
nnoremap <silent> [unite]g :<C-u>Unite tab<CR>
" gist一覧
nnoremap <silent> [unite]s :<C-u>Unite gista<CR>

" action 選択時に、インサートモードで開始する。
call unite#custom#profile('action', 'context', {'start_insert' : 1})
