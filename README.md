# dotfiles

## セットアップ手順

- homebrew をインストールする
  - git も同時にインストールされる。
- `~/Workspace` などの適当なファルダを作成し、その中にこのリポジトリを `git clone` する
- `./setup.sh` を実行する
- VSCode を一度起動し、code コマンドで VSCode が起動するよう設定する
  - 初回起動で設定ファイルを生成させる
  - 後続のスクリプトで code を使用するのでそれを設定する
- `./vscode-setup.sh` を実行する
- **iterm2 で** `p10k configure` を実行し、 [powerlevel10k](https://github.com/romkatv/powerlevel10k) が推奨するフォントのインストールを行う
  - `ターミナル`で実行するとインストールできないため注意
- iterm2 のデフォルトプロファイルに `./theme` 内のカラープリセットを適用させる
- `MyricaM` をインストールする
