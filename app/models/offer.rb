class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :title, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
end
