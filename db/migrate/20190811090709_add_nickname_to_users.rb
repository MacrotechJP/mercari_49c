class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :firstname_kana, :string
    add_column :users, :lastname_kana, :string
    add_column :users, :phone_number, :string
    add_column :users, :birthday, :Date
    add_column :users, :salesproceeds, :integer
    add_column :users, :point, :integer
    add_column :users, :profile_image, :string
    add_column :users, :profile_description, :text
  end
end
