class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  VALID_SEX_REGEX = /\A[M|F]\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :nickname, presence: true, length: {maximum: 50}, uniqueness: { case_sensitive: false }
  validates :sex, presence: true, format: {with: VALID_SEX_REGEX}
  validates :city_id, presence: true
  validates :note, length: {maximum: 50}
  has_secure_password
  validates :password, length: { minimum: 6 }
end
