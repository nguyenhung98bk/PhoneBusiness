class CreateItemImages < ActiveRecord::Migration[7.1]
  def change
    create_table :item_images do |t|
      t.references :item, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
