class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user_name, presence: true, uniqueness: true, length: { minimum: 6, maximum: 10 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6, maximum: 25 }
  has_many :posts
end
