class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :first
      t.string :second
      t.string :third
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
