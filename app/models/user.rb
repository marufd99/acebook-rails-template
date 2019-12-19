class User < ApplicationRecord
  # set up a macro to utilize Bcrypt methods

  has_many :posts, dependent: :destroy
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\[a-z]+\z/i
  validates :name, presence: true
  # validates :email, presence: true,
  # format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  has_secure_password
end
