class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20]
      )
    end
    user
  end
  
  has_many :items
  has_many :comments
  has_many :rates
  has_many :creditcards
  has_many :likes
  has_many :selling_items, -> { where( "buyer_id is NULL" ) }, foreign_key: "seller_id", class_name: "Item"
  has_many :sold_items, -> { where( "buyer_id is no NULL" ) }, foreign_key: "seller_id", class_name: "Item"


  has_many :seller_items, class_name: 'Item', foreign_key: 'seller_id'
  has_many :buyer_items, class_name: 'Item', foreign_key: 'buyer_id'
  has_many :cust_addressses
  accepts_nested_attributes_for :cust_addressses

  private
  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end

