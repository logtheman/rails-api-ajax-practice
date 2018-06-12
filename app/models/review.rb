class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :user, uniqueness: true, presence: true
  validates :restaurant, uniqueness: true, presence: true
end
