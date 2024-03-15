class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :customer
  belongs_to :customer_destination
  belongs_to :staff
end
