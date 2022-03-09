class CreateInventoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_items do |t|
      t.string :name, null: false
      t.text :description
      t.integer :stock, null: false
      t.integer :account_id, null: false
      t.boolean :active, default: true
      t.float :price, null: false
      t.string :category
      t.string :product_type

      t.timestamps
    end
  end
end
