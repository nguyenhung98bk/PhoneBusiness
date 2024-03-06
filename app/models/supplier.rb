class Supplier < ApplicationRecord
  has_many :items, dependent: :destroy

  def self.search(params)
    query = Supplier.all
    query = query.where('name LIKE ?', "%#{params[:name]}%") if params[:name].present?
    query
  end
end
