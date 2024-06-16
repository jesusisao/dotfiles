#!/bin/zsh -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

# preztoのsubmoduleのファイルも全て揃える
git submodule update --init --recursive

# dotfilesディレクトリにある、ドットから始まり2文字以上の名前のファイルに対して
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    [ "$f" = ".gitignore" ] && continue

    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/
done

# アプリケーションのインストール --------

brew bundle install --file=Brewfile

# キーリピート系の速度変更 --------

defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 1
