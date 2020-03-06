## READ ME


## MY＿PASSWORD＿APP
高齢者向けのパスワード管理サイトです。
<img width="1439" alt="トップページ" src="https://user-images.githubusercontent.com/59217782/75864749-d3f49f80-5e45-11ea-909d-8cae2face4e2.png">


## Description
高齢者向けのパスワード管理サイト。誰でも簡単に登録でき、パスワードを記録しておけるサイトです。  
基本的な登録情報としては、ユーザー名とパスワード情報を登録でき、必要に応じてメールアドレスと電話番号、メモの登録ができます。

## Features
・haml/SASS記法を使ったマークアップ  
・deviseを用いたユーザー登録機能の実装  
・「最低限の機能のみ備えたパスワード管理サイトが欲しい」というお声を参考に開発。  
ご年配の方の利用を踏まえ字体や文字色、背景色に見づらい色や字体を使わずマークアップ  
・前職の職場にて年配の方(約50名)にアンケートを実施し、最低限必要と回答された項目のみを登録できるように設定。
＊以下がアンケートフォーマットです。  

<img width="739" alt="アンケート" src="https://user-images.githubusercontent.com/59217782/76037534-aa915c00-5f8a-11ea-9b1d-e055d5f8cfc3.png">

## Requirement
・Ruby 2.5.1  
・Rails 5.2.3

## Author
@iguchidaisuke

## how to use
＊利用登録画面
<img width="1437" alt="登録画面" src="https://user-images.githubusercontent.com/59217782/75865446-ecb18500-5e46-11ea-9d84-5cbc326231a0.png">
<img width="1438" alt="登録画面2" src="https://user-images.githubusercontent.com/59217782/75865454-efac7580-5e46-11ea-8521-80787973c896.png">

※新規情報登録画面
<img width="1433" alt="情報新規登録" src="https://user-images.githubusercontent.com/59217782/75865459-f0dda280-5e46-11ea-8609-d7f5ed5f9c19.png">

＊登録内容表示画面
<img width="1435" alt="情報表示" src="https://user-images.githubusercontent.com/59217782/75865903-92fd8a80-5e47-11ea-9dad-01c35f8a96d1.png">



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