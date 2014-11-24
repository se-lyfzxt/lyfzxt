class Blog < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :bcmts, dependent: :destroy
  default_scope -> {order('created_at DESC')}
  validates :user_id, presence: true
  validates :city_id, presence: true
  validates :title, presence: true
end
