class Offer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :game
  # validates :title, uniqueness: true, presence: true
  # validates :description
end
