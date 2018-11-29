class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } , presence: true
  validates_uniqueness_of :email

  validates :encrypted_password, presence: true

  has_many :orders, class_name: 'Cartify::Order', foreign_key: :user_id
  has_one :billing, class_name: 'Cartify::Billing', foreign_key: :user_id
  has_one :shipping, class_name: 'Cartify::Shipping', foreign_key: :user_id
  has_many :addresses, class_name: 'Cartify::Address', foreign_key: :user_id
end
