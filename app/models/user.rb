class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  mount_uploader :image, ImageUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true

  validates :image, presence: true, on: :update
  validates :introduction, presence: true, on: :update

  has_many :subscribes
  has_many :reserves

end
