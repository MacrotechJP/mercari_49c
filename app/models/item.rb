class Item < ApplicationRecord

  has_many :images
  has_many :comments
  has_many :images
  has_many :likes
  has_many :categories
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :seller, class_name: "User"
  
  # # category has_many items の場合
  # def index_items
  #   index_categories = Categoreis.first(4)
  #   index_categories.each do |index_category|
  #     index_items = index_category.items
  #     return index_items
  #   end
  # end
end

