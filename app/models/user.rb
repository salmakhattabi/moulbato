class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
  has_many :spaces
  has_many :rentals

  mount_uploader :photo, PhotoUploader

  before_create :photo_or_default

  # def photo_or_default
  #   @photo = photo.file.nil?
  # end
=======
  has_many :orders
  has_many :boats
>>>>>>> master
end
