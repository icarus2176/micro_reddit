class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { in: 3...20 }
  validates :password, presence: true, length: { in: 8...25 }
end
