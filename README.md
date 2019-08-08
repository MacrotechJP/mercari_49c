# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#DB設計


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false, unique:true|
|firstname|string|null:false|
|lastname|string|null:false|
|firstname_kana|string|null:false|
|lastname_kana|string|null:false|
|phone_number|string|null:false|
|birthday|Date|null:false|
|salesproceeds|integer|null:false|
|point|integer|null:false|
|profile_image|string||
|profile_description|text||

### Association
- has_many :items
- has_many :comments
- has_many :rates
- has_many :creditcards
- has_many :likes
- has_many :cust_addresses



## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false,add_index|
|description|text|null:false|
|condition|string|null:false|
|price|integer|null:false|
|brand|integer|null:false,add_index|
|deliveryfee|integer|null:false|
|area|integer|null:false|
|days_to_ship|integer|null:false|
|sales_situation|integer|null:false|
|likes_count|integer|null:false|
|seller_id|references|null:false,foreign_key: true|
|buyer_id|references|null:false,foreign_key: true|

### Association
- has_many :comments
- has_many :images
- has_many :likes
- belongs_to :user
- belongs_to :category



## credicardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|card_id|string|null:false|
|customer_id|string|null:false|

### Association
- belongs_to :user


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false,foreign_key: true|
|comment|String|null:false|
|item_id|references|null:false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|ancestry|||


### Association
- has_many :items


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|String|null:false|
|item_id|references|null:false,foreign_key: true|

### Association
- belongs_to :item


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false,foreign_key: true|
|item_id|references|null:false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## cust_addresssテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false,foreign_key: true|
|postal_code|string|null: false|
|prefecture|string|null: false|
|municipality|string|null: false|
|house_number|string|null: false|
|building_name|string||

### Association
- belongs_to :user


### ratesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false,foreign_key: true|
|comment|text|null: false|
|rater_id|references|foreign_key:true|
|ratedate|Date|null:false|
|rate|string|null:false|

### Association
- belongs_to :user




