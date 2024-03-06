class Item < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :order_items
end
