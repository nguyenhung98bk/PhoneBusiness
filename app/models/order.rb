class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :customer
  belongs_to :customer_destination
  belongs_to :payment_type
  belongs_to :staff, optional: true

  accepts_nested_attributes_for :order_items, allow_destroy: true

  before_create :set_initial_data

  enumerize :payment_status, in: {  unpaid: 10, wait_confirm: 20, paid: 30 }, scope: true
  enumerize :transport_status, in: {  wait_confirm: 10, prepare: 20, transporting: 30, complete: 40 }, scope: true

  def set_initial_data
    self.order_number ||= loop do
      code = Utility.make_random_string(2, 2)
      break code if Order.where(order_number: code).blank?
    end
  end

  def self.search(params)
    query = self.all
    if (params[:key_search])
      query = query.joins(:customer)
      query = query.where("order_number LIKE ? OR customers.name LIKE ?", "%#{params[:key_search]}%", "%#{params[:key_search]}%")
    end
    query = query.where(payment_status: params[:payment_status]) if params[:payment_status].present?
    query = query.where(transport_status: params[:transport_status]) if params[:transport_status].present?
    query = query.order(created_at: :desc)
    query
  end
end
