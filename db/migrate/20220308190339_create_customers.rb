class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :account_id
      t.string :name
      t.string :email
      t.boolean :active
      t.string :phone_num
      t.string :display_name

      t.timestamps
    end
  end
end
