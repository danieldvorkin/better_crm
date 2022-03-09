class CreateQuoteItems < ActiveRecord::Migration[5.2]
  def change
    create_table :quote_items do |t|
      t.integer :item_id
      t.integer :transaction_id
      t.integer :quote_id
      t.boolean :active
      t.integer :quantity
      t.float :price
      t.float :tax

      t.timestamps
    end
  end
end
