/*
Godoc はGoのパッケージドキュメント情報をQiitaで紹介するためのパッケージです。そのままサンプルとして使えます。
リポジトリは https://github.com/lufia/godoc-sample です。

How to read a document

ドキュメントを読むためにはgo docコマンドまたはgodocコマンドが使えます。

How to write a document

パッケージドキュメントはpackage句の直前に書く必要がありますが、
Build constraintsはpackageよりも前に書かなければなりません。
そのため、記述する順番としては、Build constraintsが先になります。

空行を入れると、別の段落として区切ることができます。

    インデントすると、ソースコードのような
    整形されたテキストも書けます

Heading

アルファベットの大文字で始まり、句読点を含まない1行だけの段落があれば、
それはヘッダとして装飾されます。ただし、ヘッダを2つ以上続けることはできません。
次の行はヘッダになりますが、その次は同じルールにも関わらず普通の段落です。

This is a header

This is not a header

*/

package main

import "fmt"

// mainは5-3を計算して標準出力に表示します
func main() {
	fmt.Println(sub(5, 3))
}

// subはx-yを計算してintで返します
func sub(x, y int) int {
	return x - y
}
