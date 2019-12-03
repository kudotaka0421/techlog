# techlog アプリケーションの概要概要
https://gyazo.com/d7ec80bd73a1291e204c81d338f9f3ac
# techlog アプリケーションの機能概要

・ユーザー新規登録、ログイン機能
・ユーザーアイコン画像アップロード機能
・レビュー投稿、編集、削除機能
・adminによる管理者権限機能(管理者は全ての投稿を修正、削除できる)
・いいね機能
・スクールの場所、学べる言語からスクール一覧表示機能
・スクールのレビュー評価平均表示機能
・パンくずリストの表示機能




# techlog DB設計

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|comments_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :comment


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|integer|null: false|

### Association
- has_many :likes
- has_many :comments


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|rate|integer|null: fals|
|user_id|integer|null: false, foreign_key: true|
|school_id|integer|null: false, foreign_key: true|

### Association
- has_many :likes
- belongs_to :user
- belongs_to :school


## schoolsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||
|image_url|text||
|detail|text||
|fee|integer||
|rate|integer||
|company_url|text||

### Association
- has_many :comments
- has_many :school_locations
- has_many :locations, through: :school_locations
- has_many :school_languages
- has_many :languages, through: :school_languages


## languagesテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|

### Association
- has_many :school_languages
- has_many :schools through: :school_languages


## school_languagesテーブル

|Column|Type|Options|
|------|----|-------|
|language_id|integer|null: false, foreign_key: true|
|school_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :language
- belongs_to :school


## locationsテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|

### Association
- has_many :school_locations
- has_many :schools through: :school_locations


## school_locationsテーブル

|Column|Type|Options|
|------|----|-------|
|location_id|integer|null: false, foreign_key: true|
|school_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :location
- belongs_to :school
