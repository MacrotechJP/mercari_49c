class Item < ApplicationRecord

  has_many :images
  has_many :comments
  has_many :images
  has_many :likes
  belongs_to :user
  belongs_to :category
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"
end
