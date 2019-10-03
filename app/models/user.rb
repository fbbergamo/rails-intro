class User < ApplicationRecord
  extend  ActionView::Helpers::DateHelper
  
  has_many :microposts, dependent: :destroy
  validates :email, presence: true    
  validates :name, presence: true
  
  def days_since_created
    Date.today.mjd - created_at.to_date.mjd
  end
end
