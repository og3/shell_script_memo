# 関数
## echo
改行付きで標準出力する。

# 文法
## 一行で書く場合
各行を;でつなぐ。
echo hello; echo world

## 変数
変数名=で表現する。スペースは入れちゃダメ。
name="名前"
echo $name
echo "${name}さん"

## bashの宣言
スクリプトの一行目に「#! /bin/bash」と書く。
