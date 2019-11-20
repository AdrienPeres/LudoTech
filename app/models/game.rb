class Game < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  # validates :name, presence: true
end
