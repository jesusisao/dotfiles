#!/bin/zsh -eu

VSCODE_SETTING_DIR="${HOME}/Library/Application Support/Code/User"

rm -f "${VSCODE_SETTING_DIR}/settings.json"
ln -s "${PWD}/vscode/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

cat vscode/extensions | while read line
do
    code --install-extension $line
done
