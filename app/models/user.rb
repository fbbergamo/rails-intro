class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  validates :email, presence: true    
  validates :name, presence: true
end
