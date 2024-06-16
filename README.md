# dotfiles

## 前提

- homebrew と git がインストールされている

## 使用方法

1. `~/Workspace` など適当なファルダを作成し、その中にこのリポジトリを `git clone` する
1. `./setup.sh` を実行する
1. VSCode を一度起動し、何もせず閉じる（設定ファイルを生成させる）
1. `./vscode-setup.sh` を実行する
1. **iterm2 で** `p10k configure` を実行し、 [powerlevel10k](https://github.com/romkatv/powerlevel10k) が推奨するフォントのインストールを行う
1. iterm2 のデフォルトプロファイルに `./theme` 内のカラープリセットを適用させる
1. `MyricaM` をインストールする
