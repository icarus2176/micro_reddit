class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 3...30 }
  validates :body, presence: true, length: { minimum: 10  }
  validates :user_id, presence: true
end
