class Train < ActiveRecord::Base
  belongs_to :src, class_name: "City"
  belongs_to :dst, class_name: "City"

  default_scope -> {order('created_at DESC')}
  validates :trainno, presence: true
  validates :src_id, presence: true
  validates :dst_id, presence: true
  validates :time, presence: true
  validates :price, presence: true
end
