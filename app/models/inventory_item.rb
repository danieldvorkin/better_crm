class InventoryItem < ApplicationRecord
    belongs_to :account
    validates_presence_of :account_id, :name, :stock, :price, :category
end
