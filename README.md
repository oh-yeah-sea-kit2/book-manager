# book-manager

## 概要
* 社内の書籍の状態を管理
* 社員に書籍の貸出と返却を行うシステムの構築

## シーケンス図
![シーケンス図](./doc/sequence/シーケンス図.png)

## 機能一覧書き出し（とりあえず）
* 書籍管理
  * 書籍の登録
  * 書籍の編集、削除
  * 書籍の貸出
  * 書籍の返却
  * 書籍の検索
* 社員管理（ユーザ管理）
  * 社員の登録
  * 社員の検索（管理者）
  * 社員の編集、削除（管理者）

## 言語、フレームワークとか（予定のものも含む）
* Python
  * Flask or Django
* React
  * ようしらん…
* MySQL
* HTMl, CSS (書くだけ書いとく)
* AWS
* Firebase

##  利用する外部API
* [OpenBD][1]

## やること
* 画面イメージ、モックアップを作成
  * まずは手書きなどでラフを作る
  * Figmaというツールでもう少し具体のイメージを作る  
* 社員管理（以下、ユーザ管理）をすでにある仕組みで簡単にしたい。以下、案
  * Firebase Authentication
  * AWS Cognito
* システム構成図を書く (PlantUML)
* Python Flaskで書籍のAPIを作る
* etc

## 今後やること（プロトタイプではやらない）
* 書籍のタグ付け、ジャンル付け機能の実装
  * 書籍名等から形態素解析で単語ごとに分け、その単語が特定のキーワードと完全一致したものをジャンルとする予定。


[1]:https://openbd.jp/
