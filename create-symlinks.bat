@echo off

rem �z�[���f�B���N�g���Ŏ��s���Ă��������B

rem �e��ݒ�̃V���{���b�N�����N�폜���܂��B
del .zshrc
del .tmux.conf
del .tigrc
del .vimrc
rmdir .vim
rmdir bin

rem �e��ݒ�̃V���{���b�N�����N���쐬���܂��B
mklink .zshrc dotfiles-win\.zshrc
mklink .tmux.conf dotfiles-win\.tmux.conf
mklink .tigrc dotfiles-win\.tigrc
mklink .vimrc dotfiles-win\.vimrc
mklink /D .vim dotfiles-win\.vim
mklink /D bin dotfiles-win\bin