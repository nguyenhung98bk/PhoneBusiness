class Customer < ApplicationRecord
  has_secure_password

  has_many :customer_destinations, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :password_settings, dependent: :destroy

  enumerize :status, in: {  not_yet_authenticated: 10, active: 20, block: 30 }, scope: true
end
