class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :username, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: "50x50!").processed 
    else
      "/default_profile.jpg"
    end 
  end
end
