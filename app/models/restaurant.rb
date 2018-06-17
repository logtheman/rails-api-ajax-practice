class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :user, uniqueness: true, presence: true
end
