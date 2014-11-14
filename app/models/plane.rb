class Plane < ActiveRecord::Base
  default_scope -> {order('created_at DESC')}
  validates :trainno, presence: true
  validates :src_id, presence: true
  validates :dst_id, presence: true
  validates :time, presence: true
  validates :price, presence: true
end
