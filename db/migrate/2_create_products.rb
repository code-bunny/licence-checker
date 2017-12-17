class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :description, null: false
      t.integer :product_id, null: true

      t.timestamps null: false
    end
  end
end
