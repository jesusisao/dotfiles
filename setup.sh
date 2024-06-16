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

# homebrewの設定とアプリケーションのインストール --------

if ! type brew &> /dev/null ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Since Homebrew is already installed, skip this phase and proceed."
fi
brew bundle install --file=Brewfile

# キーリピート系の速度変更 --------

defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 1

# VSCodeの設定 --------

VSCODE_SETTING_DIR="~/Library/Application\ Support/Code/User"

rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "vscode/settings.json" "${VSCODE_SETTING_DIR}/settings.json"
