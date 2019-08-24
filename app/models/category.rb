class Category < ApplicationRecord

  belongs_to :item
  has_ancestry


  def self.last_four(count)
    names = ["メンズ", "レディース", "ベビー・キッズ", "コスメ・香水・美容"]
    where("name = ?","#{names[count]}").order(created_at: :desc).limit(4)
  end

  
end
