#!/bin/bash

# 移動元ディレクトリのパスを指定
source_directory="/Users/masaru/Alfred"

# 移動先ディレクトリのパスを指定
destination_directory="/Users/masaru/Library/Application Support/Alfred/Alfred.alfredpreferences/workflows"

# 移動元ディレクトリ内の全ての.csvファイルを再帰的に取得し、移動先ディレクトリにコピー
find "$source_directory" -type f -name "*.csv" -exec cp {} "$destination_directory" \;

echo ".csvファイルをコピーしました。"
