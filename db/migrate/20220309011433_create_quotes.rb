class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :customer_id
      t.boolean :active
      t.float :total
      t.string :quote_type
      t.float :taxes
      t.float :fees
      t.integer :shipping_address_id
      t.integer :billing_address_id
      t.string :status
      t.integer :purchase_order_id

      t.timestamps
    end
  end
end
