class Customer < ApplicationRecord
  has_secure_password

  has_many :customer_destinations, dependent: :destroy
  has_many :orders, dependent: :destroy
end
