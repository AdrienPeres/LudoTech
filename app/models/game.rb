class Game < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  # validates :name, presence: true
end
