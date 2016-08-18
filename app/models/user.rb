class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :surname, presence: true
  validates :username, presence: true, uniqueness: true

  has_many :posts
  has_many :comments, dependent: :destroy
end
