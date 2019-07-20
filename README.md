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
|email|string|null:false|
|password|string|null:false|
|phone_number|string|null:false|
|birthday|Date|null:false|
|salesproceeds|integer|null:false|
|point|integer|null:false|

### Association
- has_one :cust_address
- has_many :comments
- has_many :likes
- has_many :rates
- has_many :cust_rates
- has_many :items
- has_one :credicards
- has_many :profiles
- has_many :rates_of_rater, :class_name: Rate', foreign_key: :rater_id
- has_many :rates_of_ratee, :class_name: 'Rate', foreign_key: :ratee_id
- has_many :rates_of_rater, :class_name: 'Rate', foreign_key: :cust_rater_id
- has_many :rates_of_ratee, :class_name: 'Rate', foreign_key: :cust_ratee_id


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|description|text|null:false|
|condition|string|null:false|
|price|integer|null:false|
|brand|integer|null:false|
|deliveryfee|integer|null:false|
|area|integer|null:false|
|days_to_ship|integer|null:false|
|sales_sprofit|bigint|null:false|
|sales_situation|integer|null:false|
|likes_count|integer|null:false|
|seller_id|integer|null:false, foreign_key: true|
|buyer_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :category
- has_many :images
- has_many :comments
- has_many :likes
- belongs_to :seller, class_name: 'User'
- belongs_to :buyer, class_name: 'User'


## credicardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|cred_id|string|null:false|
|customer_id|string|null:false|

### Association
- belongs_to :user


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true| 
|profile_image|string|null:false| 
|profile_description|text||

### Association
- belongs_to :user


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true| 
|comment|string|null:false|

### Association
- belongs_to :user


## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|

### Association
- has_many :items
- has_ancestry


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
|item_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :item


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|item_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## cust_addresssesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|postal_code|string|null:false|
|prefecture|string|null:false|
|municipality|string|null:false|
|municipality|string|null:false|
|building_name|string|null:false|

### Association
- belongs_to :user


### ratesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|comment|text|null:false|
|rate|integer|null:false|
|rater_id|integer|null:false,foreign_key|
|ratee_id|integer|null:false,foreign_key|
|date|Date|null:false|

### Association
- belongs_to :rater, class_name: 'User'
- belongs_to :ratee, class_name: 'User'


### cust_ratesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|cust_rater_id|references|null:false|
|cust_ratee_id|references|null:false|
|evaluate|integer|null:false|

### Association
- belongs_to :cust_rater, class_name: 'User'
- belongs_to :cust_ratee, class_name: 'User'

### enum
- evaluate
