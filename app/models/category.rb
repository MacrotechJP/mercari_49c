class Category < ApplicationRecord

  belongs_to :item
  has_ancestry


  def self.last_four(count)
    names = ["レディース", "メンズ",  "ベビー・キッズ", "コスメ・香水・美容"]
    where("name = ?","#{names[count]}").order(created_at: :desc).limit(4)
  end

  def self.category_name(count)
    names = ["レディース", "メンズ",  "ベビー・キッズ", "コスメ・香水・美容"]
    name = names[count]
  end


  
end
