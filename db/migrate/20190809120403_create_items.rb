class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :condition
      t.integer :price
      t.string :brand
      t.string :deliveryfee
      t.string :area
      t.string :days_to_ship
      t.string :sales_situation
      t.string :likes_count
      t.string :size
      t.string :deliveryWay
      t.timestamps
    end
  end
end
