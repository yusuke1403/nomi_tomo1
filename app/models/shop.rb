class Shop < ApplicationRecord
  has_many :shops
  has_many :images, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
