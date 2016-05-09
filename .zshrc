# デフォルトの補完機能を有効化
autoload -Uz compinit
compinit

# ディレクトリ名で cd
setopt auto_cd

# ディレクトリの移動履歴を利用
setopt auto_pushd

# auto_pushd で重複するディレクトリを記録しない。
setopt pushd_ignore_dups

# 日本語設定
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# 日本語ファイル名等8ビトを通す。
setopt print_eight_bit

# キーバインドを vim モードにする。
bindkey -d
bindkey -v

# 色設定
autoload colors
colors

# 履歴設定
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

# git の情報を表示
autoload -Uz vcs_info
setopt prompt_subst
zstyle ":vcs_info:*" enable git
zstyle ":vcs_info:*" formats '%F{green}%c%u[%b:%r]%f'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'

# プロンプトを2行表示し、現在のモードを表示する。
# 参考: http://nishikawasasaki.hatenablog.com/entry/20101227/1293459255
function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd)
    PROMPT="%{${fg[cyan]}%}%n@%m %~%{${reset_color}%}
[NOR]$ "
    ;;
    main|viins)
    PROMPT="%{${fg[cyan]}%}%n@%m %~%{${reset_color}%}
[INS]$ "
    ;;
  esac
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# ノーマルモードに移行するキーを変更する。
# 参考: http://qiita.com/syui/items/8cc534c2c30543965950
bindkey -M viins '^j' vi-cmd-mode

# インクリメンタルサーチ
bindkey '^f' history-incremental-search-forward
bindkey '^b' history-incremental-search-backward
bindkey '^g' send-break

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
