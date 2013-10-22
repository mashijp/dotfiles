#!/bin/bash

git config --global color.ui auto
git config --global --add core.excludesfile "$HOME/.gitignore"

echo '以下のようにGitの設定が必要です(自動では行われません)'
echo 'git config --global user.name "mashijp"'
echo 'git config --global user.email "EMAIL"'
echo ''
