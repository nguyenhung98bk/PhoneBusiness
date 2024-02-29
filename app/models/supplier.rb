class Supplier < ApplicationRecord
  has_many :items, dependent: :destroy
end
