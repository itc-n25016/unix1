#!/bin/bash

usage()
{
  # シェルスクリプトのファイル名を取得
<<<<<<< HEAD
  local script_name=$(basename $0)
=======
  local script_name=$(basename "$0")
>>>>>>> origin/main
  # ヒヤドキュメントでヘルプを表示
  cat << END
Usage: $script_name PATTERN [PATH] [NAME_PATTERN]
Find file in current directory recursively, and print lines which match PATTERN.

  PATH           find file in PATH directory, instead of current directory
  NAME_PATTERN   specify name pattern to find file

Examples:
  $script_name return
  $script_name return ~ '*.txt'
END
}

# コマンドライン引数が0個のとき (何も指定されないとき)
if [ "$#" -eq 0 ]; then
  usage
  exit 1        # 終了ステータス1で終了
fi

pattern=$1
directory=$2
name=$3

# 第2引数(起点ディレクトリ)が空文字列ならば、
# デフォルト値として . (カレントディレクトリ)を設定
if [ -z "$directory" ]; then
        directory='.'
fi

# 第3引数(検索ファイルパターン)が空文字列ならば、
# デフォルト値として'*'を設定
if [ -z "$name" ]; then
  name='*'
fi

# -n : print line number
# -H : print the file name
find "$directory" -type f  -name "$name" | xargs grep -nH "$pattern"
