class CreateAdmins < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.string :username, null: false
      t.string :password_digest, null: false

      t.timestamps
    end

    add_index :admins, :username, unique: true
  end
end
