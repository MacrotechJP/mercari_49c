class CreateCustAddressses < ActiveRecord::Migration[5.2]
  def change
    create_table :cust_addressses do |t|


      t.string :firstname
      t.string :lastname
      t.string :firstname_kana
      t.string :lastname_kana
      t.string :postal_code
      t.string :prefecture
      t.string :municipality
      t.string :house_number
      t.string :building_name
      t.string :phone_number
      t.timestamps
    end
  end
end
