# 関数
## echo
改行付きで標準出力する。

## 配列
配列の宣言  
colors=(red blue pink)  
呼び出し  
${colors[0]} # red  
${colors[1]} # blue  
${colors[2]} # pink  
全て呼ぶ  
${colors[@]} # red blue pink  
要素の数  
${#colors[@]} # 3  
値の変更  
colors[1]=silver  
値の追加  
colors+=(green orange)  

## 数値の計算
```
n=7  
echo $((6 + 7))  
echo $((n + 10))  
```
少数の演算はできない。  

## if
```
read -p "Name? " name

if [ "$name" = "if" ]; then
  echo "welcomem, if"
elif [ "$name" = "elif" ]; then
  echo "welcome, elif"
else
  echo "you are not allowed"
fi
```

## for

```
for i in {1..5}; do
  echo $i
done

for ((i=1; i<=5; i++)); do
  echo $i
done

colors=(red blue pink)
for color in ${colors[@]}; do
  echo $color
done

for item in $(date); do
  echo $item
done
```


# 文法
## 一行で書く場合
各行を;でつなぐ。  
echo hello; echo world

## 変数
変数名=で表現する。スペースは入れちゃダメ。  
name="名前"  
echo $name  
echo "${name}さん"

## 読み込み専用変数
readonlyをつける。  
readonly name="名前"

## 特殊変数
スクリプトの引数にした値を呼び出す。  
$1, $2  

$0：スクリプト名を表示  
$#：引数の数を表示  
$@, $*　：すべての引数を表示

## 標準入力
入力された値を変数に格納する。  
read 変数  
read -p "入力する際に表示するテキスト" 変数

## bashの宣言
スクリプトの一行目に「#! /bin/bash」と書く。

## 文字列の比較
```
# 等しいかどうか
= か ==
# 等しくない
!=
# 正規表現
=~
```

## ファイルの存在を判定する
```
-e : 種類を問わず存在しているか
-f : ファイルが存在しているか
-d : ディレクトリが存在しているか
```
例：
```
# -e -f -d
if [[ -f $0 ]]; then
  echo "file exists ..."
fi
if [[ -d $0 ]]; then
 echo "dir exists ..."
fi
```

