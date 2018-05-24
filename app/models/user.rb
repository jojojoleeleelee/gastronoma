class User < ApplicationRecord
  has_many :ingredients
  has_many :recipes, dependent: :destroy
  has_secure_password
end
