class CustomerDestination < ApplicationRecord
  belongs_to :customer
  has_many :orders
end
