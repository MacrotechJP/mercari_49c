class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :items
#   has_many :comments
#   has_many :rates
#   has_many :creditcards
#   has_many :likes
#   has_many :cust_addresses
#   has_many :items
#   has_many :selling_items, -> { where( "buyer_id is NULL" ) }, foreign_key: "seller_id", class_name: "Item"
#   has_many :sold_items, -> { where( "buyer_id is no NULL" ) }, foreign_key: "seller_id", class_name: "Item"

end
  # has_many :seller_items, class_name: 'Item', foreign_key: 'seller_id'
  # has_many :buyer_items, class_name: 'Item', foreign_key: 'buyer_id'
  # has_many :cust_addressses
  # accepts_nested_attributes_for :cust_addressses

end

