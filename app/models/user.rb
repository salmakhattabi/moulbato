class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :boats
  has_many :orders

  # mount_uploader :photo, PhotoUploader

  # before_create :photo_or_default

  # def photo_or_default
  #   @photo = photo.file.nil? ? "" : photo
  # end

end
