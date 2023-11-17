#!/bin/bash

# 変更を加えたいディレクトリへのパスを指定
target_directory="~/Alfred"

# 指定したディレクトリ内の.csvファイルを取得
csv_files=("$target_directory"/*.csv)

# ファイルごとに処理
for csv_file in "${csv_files[@]}"; do
    # ファイル名を取得
    file_name=$(basename "$csv_file")

    # 拡張子を取り除いたファイル名を取得
    file_name_without_extension="${file_name%.*}"

    # 新しいファイル名を生成
    new_file_name="${file_name_without_extension}_list.csv"

    # ファイル名を変更
    mv "$csv_file" "$target_directory/$new_file_name"

    echo "変更前のファイル名: $file_name"
    echo "変更後のファイル名: $new_file_name"
done

echo "全ての.csvファイルの名前を変更しました。"
