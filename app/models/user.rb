class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: "50x50!").processed 
    else
      "/default_profile.jpg"
    end 
  end
end
