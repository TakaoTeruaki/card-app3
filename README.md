# アプリ名:診察券管理アプリ
![jFfqgwJTBAfidHHkdP331586172455-1586172517](https://user-images.githubusercontent.com/61138363/78554070-69b88b80-7845-11ea-958c-4e94d2ff3d1a.gif)

### 概要
診察券の画像登録
病院名、休診日、電話番号、カードナンバー、診療科目の登録ができます。
ユーザーログイン機能
カード検索機能
詳細ページから編集・削除
詳細ページから電話をかける
QRコードにカードナンバー情報を登録

### 制作背景(意図)
  ポイントカードのアプリ化が進む中、診察券のアプリ化が進んでいないと、
  病院へ行くたびに思っていました。
  診察券は内科や外科、眼科など複数の病院毎にカードを保持します、また、自宅の近所の病院や
  職場近くの病院掛かるとだんだんと診察券の枚数が増えていきます。

  以前、病院の受付で、複数のカードの中から診察券を探して提示している光景を見ることもあり、
  アプリ化したいという思いから、このアプリを作ることにしました。

### 工夫したポイント
  診察券はポイントカードと違い、バーコードがついていない為、診察券の画像だけでは
  本人の特定が難しいと思い、QRコードを表示し、リーダーで読み取った際にカードナンバーが取得できます。
  QRコードは読み取り性も高く、スマホのカメラからでも読み取りが可能な為、取り扱いがしやすいと感じました。

### 使用技術(開発環境)
  Ruby 5.2.4.1
  Ruby on Rails 13.0.1

### 課題や今後実装したい機能
  今後実装したい機能としては、お薬手帳も記録に残せるようにしたいと思っています。

### DB設計
## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|nickname|string|unique: true|
|password|string|  |

### Association
- has_many :posts

## Postsテーブル
|Column|Type|Options|
|------|----|-------|
|hospital|text|null: true|
|holiday|text|null: true|
|image|text|null: true|
|user_id|integer| |
|number|text|null: true|
|subject|text|null: true|
|tell|text|null: true|

### Association
- belongs_to :user