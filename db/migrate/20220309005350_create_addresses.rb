class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address1, null: false
      t.string :address2
      t.string :city, null: false
      t.string :country, null: false
      t.string :postal, null: false
      t.string :phone, null: false
      t.boolean :default
      t.boolean :active
      t.integer :customer_id, null: false

      t.timestamps
    end
  end
end
