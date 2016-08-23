class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true, length: { minimum: 3, maximum: 255 }

  default_scope { order(id: :desc) } 
end
