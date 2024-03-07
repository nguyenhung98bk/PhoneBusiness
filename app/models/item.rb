class Item < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :order_items
  has_many :item_images
  before_create :set_initial_data

  accepts_nested_attributes_for :item_images, allow_destroy: true

  def self.search(params)
    query = self.all
    query = query.where('name LIKE ?', "%#{params[:name]}%") if params[:name].present?
    query
  end

  def set_initial_data
    self.product_no ||= loop do
      code = Utility.make_random_string(2, 2)
      break code if Item.where(product_no: code).blank?
    end
  end
end
