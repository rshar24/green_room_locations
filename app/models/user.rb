class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :photo, presence: true
  has_many  :bookings
  has_many  :locations
end
