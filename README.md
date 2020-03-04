## READ ME


## MY＿PASSWORD＿APP
高齢者向けのパスワード管理サイト
![トップページ]
(https://user-images.githubusercontent.com/59217782/75863738-51b7ab80-5e44-11ea-8a5f-d252e9b51686.png">)

Description
高齢者向けのパスワード管理サイト。誰でも簡単に登録でき、パスワードを記録しておけるサイトです。
基本的な登録情報としては、ユーザー名とパスワード情報を登録でき、必要に応じてメールアドレスと電話番号を登録できます。
前職の経験から「最低限の機能のみ備えたパスワード管理サイトが欲しい」というお声を参考に開発致しました。

Features
・haml/SASS記法と、命名規則BEMを使ったマークアップ
・deviseを用いたユーザー登録機能の実装

Requirement
・Ruby 2.5.1
・Rails 5.2.3

Author
@iguchidaisuke


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :information

## informationテーブル
|Column|Type|Options|
|------|----|-------|
|info_name|string|null: false|
|email|string|null: false|
|phone_number|string||
|password|string|null: false|
|memo|string||

### Association
- belongs_to :users