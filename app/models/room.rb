class Room < ApplicationRecord
  belongs_to :shop
  has_many :room_users
  has_many :users, through: :room_users
end
