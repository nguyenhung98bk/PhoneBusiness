class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true
      t.references :customer_destination, null: false, foreign_key: true
      t.string :order_number, null: false
      t.string :total_price, null: false
      t.string :ship_amount, null: false
      t.string :message
      t.integer :status, null: false, default: 10

      t.timestamps
    end

    add_index :orders, :order_number, unique: true
  end
end
