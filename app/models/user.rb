class User < ApplicationRecord
  # set up a macro to utilize Bcrypt methods

  has_many :posts, dependent: :destroy

  # validates :username, uniqueness: true
  has_secure_password
end
