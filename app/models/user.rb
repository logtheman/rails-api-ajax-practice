class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
end
