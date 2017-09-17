class User < ApplicationRecord
  has_many :miscroposts
  validates :email, presence: true
  validates :name, presence: true
end
