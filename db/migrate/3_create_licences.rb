class CreateLicences < ActiveRecord::Migration
  def change
    create_table :licences do |t|
      t.string :key, null: false
      t.string :user_id, null: false
      t.integer :product_id, null: false
      t.timestamp :expires_at, null: true
      t.timestamp :expired_at, null: true

      t.timestamps null: false
    end
  end
end
