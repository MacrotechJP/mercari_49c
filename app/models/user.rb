class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,:omniauthable


  has_many :items
  has_many :comments
  has_many :rates
  has_many :creditcards
  has_many :likes
  has_many :selling_items, -> { where( "buyer_id is NULL" ) }, foreign_key: "seller_id", class_name: "Item"
  has_many :sold_items, -> { where( "buyer_id is no NULL" ) }, foreign_key: "seller_id", class_name: "Item"
  has_many :sns_credentials, dependent: :destroy

  has_many :seller_items, class_name: 'Item', foreign_key: 'seller_id'
  has_many :buyer_items, class_name: 'Item', foreign_key: 'buyer_id'
  has_many :cust_addressses
  accepts_nested_attributes_for :cust_addressses

  def self.find_for_oauth(auth)
    sns = SnsCredential.where(uid: auth.uid, provider: auth.provider).first
    unless sns
      @user = User.create(
      email: auth.info.email,
      password: Devise.friendly_token[0,20],
      nickname: auth.info.name
      )
      sns = SnsCredential.create(
      user_id: @user.id,
      uid: auth.uid,
      provider: auth.provider
      )
    end
    sns
    @user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end

end
