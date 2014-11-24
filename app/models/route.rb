class Route < ActiveRecord::Base
  belongs_to :city
  default_scope -> {order('created_at DESC')}
  validates :city_id, presence: true
  validates :route, presence: true
end
