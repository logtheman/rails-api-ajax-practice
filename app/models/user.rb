class User < ApplicationRecord
  has_many :reviews
  has_many :restaurants
  validates :name, presence: true
  validates :email, presence: true
end
