class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one_attached :icon
  has_many :posts
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true

  def display_icon
    if icon.attached?
      icon
    else ActionController::Base.helpers.asset_path("image.png") end
  end
end
