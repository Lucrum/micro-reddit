class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :username, presence: true
  validates :username, length: { in: 5..20 }
  validates :username, uniqueness: true
  
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
end
