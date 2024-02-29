class CreateCustomerDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :customer_destinations do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :prefecture
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
