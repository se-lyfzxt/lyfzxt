class Attraction < ActiveRecord::Base
  belongs_to :city
  has_many :acmts, dependent: :destroy
  default_scope -> {order('created_at DESC')}
  validates :attracname, presence: true
  validates :city_id, presence: true
end
