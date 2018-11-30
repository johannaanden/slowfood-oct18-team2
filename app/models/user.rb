class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } , presence: true
  validates_uniqueness_of :email

  validates :encrypted_password, presence: true

  validates :owner, presence: true

end
