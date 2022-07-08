class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :address_users
  has_many :addresses, through: :address_users
end
