# .zprezto-contribとは

## 使い方

zshのフレームワークpreztoのユーザー定義モジュールを格納するためのディレクトリです。
利用するには、.zpreztorcにある`zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib`のコメントを外してください。

その上で、`zstyle ':prezto:load'`に利用するモジュールを追記してください。

```
# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'git' \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'history-substring-search' \
  'syntax-highlighting' \
  'autosuggestions' \
  'prompt' \
  'custom-aws' \
  'custom-ruby' \
  'custom-exa'
```

## 参考

- https://ayatk.hatenablog.com/entry/2019/09/17/215438
- https://github.com/sorin-ionescu/prezto#external-modules
