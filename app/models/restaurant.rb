class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :user, uniqueness: true, presence: true
end
