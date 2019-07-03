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
|phone_number|integer|null:false|
|birthday|Date|null:false|
|credicard_number|integer|null:false|
|creditcard_pin|integer|null:false|
|profile_image|text|null:false|
|profile_description|text||
|salesproceeds|integer|null:false|
|point|integer|null:false|
|cust_address_id|references|null: false, foreign_key: true|
|comment_id|references|null:false, foreign_key: true|
|likes_id|references|null:false, foreign_key: true|
|rate_id|references|null:false, foreign_key: true|
|cust_rate_id|references|null: false, foreign_key: true|
|item_id|references|null:false, foreign_key: true|
|deal_id|references|null:false, foreign_key: true|

### Association
- has_many :cust_address
- has_many :comments
- has_many :likes
- has_many :rates
- has_many :cust_rates
- has_many :items
- has_many :deals_of_seller, :class_name: 'Deal', :foreign_key: :seller_id
- has_many :deals_of_buyer, :class_name: 'Deal', :foreign_key: :buyer_id
- has_many :items_of_seller, through: :deals_of_seller, source: :item
- has_many :items_of_buyer, through: :deals_of_buyer, source: :item
- has_many :rates_of_rater, :class_name: Rate', foreign_key: :rater_id
- has_many :rates_of_ratea, :class_name: 'Rate', foreign_key: :ratea_id
- has_many :rates_of_rater, :class_name: 'Rate', foreign_key: :cust_rater_id
- has_many :rates_of_ratea, :class_name: 'Rate', foreign_key: :cust_ratea_id


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|description|text|null:false|
|condition|String|null:false|
|price|integer|null:false|
|brand|integer|null:false|
|deliveryfee|integer|null:false|
|area|integer|null:false|
|days_to_ship|integer|null:false|
|sales_sprofit|bigint|null:false|
|sales_situation|integer|null:false|
|likes_count|integer|null:false|
|category_id|references|null:false, foreign_key: true|
|image_id|references|null:false, foreign_key: true|
|comment_id|references|null:false, foreign_key: true|
|deal_id|references|null:false, foreign_key: true|

### Association
- has_many :deals
- has_many :sellers, through: :deals
- has_many :buyers, through: :deals
- belongs_to :category
- has_many :images
- has_many :comments
- has_many :likes


## dealsテーブル
|Column|Type|Options|
|------|----|-------|
|seller_id|integer|null:false, foreign_key: true|
|buyer_id|integer|null:false, foreign_key: true|
|item_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :seller, class_name: 'User'
- belongs_to :buyer, class_name: 'User'


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null:false|

### Association
- belongs_to :user


## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|category_first|string|null:false|
|category_second|string|null:false|
|category_third|string|null:false|

### Association
- has_many :items


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

## cust_addresssテーブル
|Column|Type|Options|
|------|----|-------|
|address|String|null:false|

### Association
- belongs_to :user


### ratesテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null:false|
|rate|integer|null:false|
|rater_id|integer|null:false,foreign_key|
|ratea_id|integer|null:false,foreign_key|
|ratedate|Date|null:false|

### Association
- belongs_to :rater, class_name: 'User'
- belongs_to :ratea, class_name: 'User'


### cust_ratesテーブル
|Column|Type|Options|
|------|----|-------|
|cust_rater_id|references|null:false|
|cust_ratea_id|references|null:false|
|good|integer|null:false|
|normal|integer|null:false|
|bad|integer|null:false|

### Association
- belongs_to :cust_rater, class_name: 'User'
- belongs_to :cust_ratea, class_name: 'User'
