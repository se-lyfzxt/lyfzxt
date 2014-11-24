class Hcmt < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  default_scope -> {order('created_at DESC')}
  validates :hotel_id, presence: true
  validates :user_id, presence: true
  validates :content, length: {maximum: 200}
end
