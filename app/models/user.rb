class User < ApplicationRecord
  has_secure_password
  has_many :station
  has_many :supplies, through: :station
  validates :username, uniqueness: true, presence: true, length: {minimum: 4, maximum: 10}
  validates :password, presence: true, length: {minimum: 6, maximum: 15}
end