# go-practice
goの練習

## makefile
|コマンド|内容|
|:--|:--|
|make setup|開発を便利にするpkgをgo getする|
|make test|testを実行します|
|make lint|lintを実行します|
|make docker-build|docker buildしてdockerイメージを作成します|
|make docker-run|dokcer runしてイメージを実行します|
|make godoc|ブラウザからローカルのgoのpkgをgo docっぽく見れます|

## go doc
下記コマンドを使ってブラウザからローカルのgoのpkgをgo docっぽく見れます。
`$ godoc -http=:6060`

アクセス方法
http://localhost:6060

これで、go docがちゃんとかけてるか確認できます。
