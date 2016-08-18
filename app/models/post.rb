class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 60 }
  validates :content, presence: true, length: { maximum: 1000 }

  paginates_per 10
end
