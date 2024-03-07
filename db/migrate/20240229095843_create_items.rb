class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :category, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.string :name, null: false
      t.string :product_no, null: false
      t.integer :quantity, null: false
      t.string :purchase_price, null: false
      t.string :original_price, null: false
      t.string :price, null: false
      t.string :note

      t.timestamps
    end
  end
end
