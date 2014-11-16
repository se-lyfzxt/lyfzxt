class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  VALID_DATE_REGEX = /\A\d{4}\-(?:0?[1-9]|1[0-2])\-(?:0?[1-9]|[1-2]\d|3[01])\z/
  
  default_scope -> {order('created_at DESC')}
  validates :user_id, presence: true
  validates :time, format: {with: VALID_DATE_REGEX}
  validates :note, length: {maximum: 200}
end
