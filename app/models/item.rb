class Item < ApplicationRecord

  has_many :images
  
  has_many :categories
  belongs_to :user
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :seller, class_name: "User"

end

