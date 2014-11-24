class Acmt < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user
  default_scope -> {order('created_at DESC')}
  validates :attraction_id, presence: true
  validates :user_id, presence: true
  validates :content, length: {maximum: 200}
end
