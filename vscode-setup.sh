#!/bin/zsh -eu

VSCODE_SETTING_DIR="${HOME}/Library/Application Support/Code/User"
CODE_COMMAND_DIR="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

rm -f "${VSCODE_SETTING_DIR}/settings.json"
ln -s "${PWD}/vscode/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

cat vscode/extensions | while read line
do
    "${CODE_COMMAND_DIR}/code" --install-extension $line
done
