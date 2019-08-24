class Category < ApplicationRecord

  belongs_to :item
  has_ancestry


  def self.last_four
    order(created_at: :desc).limit(4)
  end

  
end
