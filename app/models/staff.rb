class Staff < ApplicationRecord
  has_secure_password

  belongs_to :order
end
