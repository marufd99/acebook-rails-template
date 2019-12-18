class User < ApplicationRecord


  # set up a macro to utilize Bcrypt methods
  has_secure_password
  has_many :posts, dependent: :destroy
