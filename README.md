# example-readable-books

本リポジトリでは、同人誌『読みやすい技術書を書く技術』のサンプルコードを公開しています。


## 構成

本リポジトリは、各章ごとにディレクトリを分けています。

```
├── 02_docker     第2章　Docker
├── 04_prh        第4章　prh
├── 05_redpen     第5章　RedPen
├── 06_textlint   第6章　textlint
├── 07_circleci   第7章　CircleCI
├── 08_reviewdog  第8章　reviewdog
└── 09_pdf        第9章　PDFの自動生成
```


## 命名規則

基本的には書籍に登場したファイル名をそのまま踏襲します。
ただし、同じファイル名で内容が異なるものについては、ファイル名の末尾にリスト番号を付与してあります。

たとえば第4章では複数の `prh.yml` が登場します。
そのためリスト4.3であれば `prh_4.3.yml` のようなファイル名になります。

また、書籍内ではCircleCIのコードの断片を掲載していますが、単一ファイルにマージしてあります。


## CircleCIの設定ファイル内のDockerイメージ

CircleCIの設定ファイルでDockerイメージ名に `tmknom` とついているものは、著者が用意したイメージです。
そのまま動くようにDocker Hubにイメージはプッシュしてあります。
このDockerイメージは、書籍内に掲載しているDockerfileをそのまま使用しています。

もちろんDockerfileも本リポジトリに含めており、これを参考にご自身でDockerビルドしたものを使用しても構いません。
その場合は、適宜CircleCIの設定ファイルを調整してください。


## LICENSE

Apache 2 Licensed. See LICENSE for full details.
