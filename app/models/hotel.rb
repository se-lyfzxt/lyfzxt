class Hotel < ActiveRecord::Base
  belongs_to :attraction
  has_many :hcmts, dependent: :destroy
  default_scope -> {order('created_at DESC')}
  validates :hotelname, presence: true
  validates :attraction_id, presence: true
  validates :address, presence: true
  validates :tel, presence: true
  validates :price, presence: true
end
