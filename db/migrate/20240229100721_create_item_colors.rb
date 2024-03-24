class CreateItemColors < ActiveRecord::Migration[7.1]
  def change
    create_table :item_colors do |t|
      t.references :item, null: false, foreign_key: true
      t.string :color
      t.integer :quantity, null: false
      t.string :purchase_price, null: false
      t.string :original_price, null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
