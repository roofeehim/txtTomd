#!/bin/bash

# フォルダ内の全ての.txtファイルをループ処理
for file in *.txt; do
  # .txtファイルが存在するか確認
  if [[ -f "$file" ]]; then
    # ファイル名から.txtを削除し、.mdを追加
    newfile="${file%.txt}.md"
    # ファイルをコピーして拡張子を変更
    cp "$file" "$newfile"
  fi
done
