class Food < ActiveRecord::Base
  belongs_to :city
  default_scope -> {order('created_at DESC')}
  validates :foodname, presence: true
  validates :city_id, presence: true
end
