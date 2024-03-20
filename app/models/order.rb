class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :customer
  belongs_to :customer_destination
  belongs_to :payment_type
  belongs_to :staff, optional: true

  accepts_nested_attributes_for :order_items, allow_destroy: true

  before_create :set_initial_data

  def set_initial_data
    self.order_number ||= loop do
      code = Utility.make_random_string(2, 2)
      break code if Order.where(order_number: code).blank?
    end
  end
end
