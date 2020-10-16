class Shop < ApplicationRecord
  has_many :rooms
  has_many :images, dependent: :destroy
  has_many :users, through: :favorites, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorite_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
