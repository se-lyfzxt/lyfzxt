class Bcmt < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  default_scope -> {order('created_at DESC')}
  validates :blog_id, presence: true
  validates :user_id, presence: true
  validates :content, length: {maximum: 200}
end
