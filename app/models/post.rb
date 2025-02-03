class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  validates :title, presence: true, uniqueness: { scope: :user_id }
  validates :text, presence: true
end
