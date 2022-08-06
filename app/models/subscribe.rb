class Subscribe < ApplicationRecord
  mount_uploader :roomphoto, RoomPhotoUploader

  validates :roomname, presence: true
  validates :explanation, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :roomphoto, presence: true

  belongs_to :user
  has_many :reserve
end
