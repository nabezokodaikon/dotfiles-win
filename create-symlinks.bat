@echo off

rem ホームディレクトリで実行してください。

rem 各種設定のシンボリックリンク削除します。
del .zshrc
del .tmux.conf
del .tigrc
del .vimrc
rmdir .vim
rmdir bin

rem 各種設定のシンボリックリンクを作成します。
mklink .zshrc dotfiles-win\.zshrc
mklink .tmux.conf dotfiles-win\.tmux.conf
mklink .tigrc dotfiles-win\.tigrc
mklink .vimrc dotfiles-win\.vimrc
mklink /D .vim dotfiles-win\.vim
mklink /D bin dotfiles-win\bin