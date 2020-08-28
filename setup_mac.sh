#!/bin/bash

ICLOUD_DIR="$HOME/Library/Mobile Documents/com~apple~CloudDocs"

set -e
set -x

if [ ! -d "$ICLOUD_DIR" ]; then
  echo "iCloud 設定がありませんでした"
  exit
fi


# Google Japanese Input

echo "Google Japanese Input の設定を試みます"

GOOGLE_JP_INPUT_DIR="$HOME/Library/Application Support/Google/JapaneseInput"
ICLOUD_GOOGLE_JP_INPUT_DIR="$ICLOUD_DIR/settings/JapaneseInput"

if [ ! -d "$ICLOUD_GOOGLE_JP_INPUT_DIR" ]; then
  echo "iCloud上に設定がないためスキップしました"
elif [ ! -d "$GOOGLE_JP_INPUT_DIR" ]; then
  echo "Google Japanese Input がインストールされていません"
else
  mv "$GOOGLE_JP_INPUT_DIR" /tmp
  ln -s "$ICLOUD_GOOGLE_JP_INPUT_DIR" "$GOOGLE_JP_INPUT_DIR"
  echo "設定しました"
fi

