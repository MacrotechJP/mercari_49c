class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :seller_items, class_name: 'Item', foreign_key: 'seller_id'
  # has_many :buyer_items, class_name: 'Item', foreign_key: 'buyer_id'
  # has_many :cust_addressses
  # accepts_nested_attributes_for :cust_addressses

end
