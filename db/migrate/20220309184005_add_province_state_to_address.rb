class AddProvinceStateToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :state_province, :string
  end
end
