class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy

  attachment :profile_image

  validates :name, presence: true, uniqueness: true, length: { in: 1..20 }
  validates :profile_text, length: { maximum: 50 }
end
