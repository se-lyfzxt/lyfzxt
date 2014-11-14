class City < ActiveRecord::Base
  has_many :foods, dependent: :destroy
  has_many :routes, dependent: :destroy
  has_many :attractions, dependent: :destroy
  has_many :blogs, dependent: :destroy
  has_many :requests, dependent: :destroy
  default_scope -> {order('created_at DESC')}
  validates :cityname, presence: true
end
