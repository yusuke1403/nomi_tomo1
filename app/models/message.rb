class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.cached?
  end
end
