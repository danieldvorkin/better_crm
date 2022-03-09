json.extract! inventory_item, :id, :name, :description, :stock, :account_id, :active, :price, :category, :type, :created_at, :updated_at
json.url inventory_item_url(inventory_item, format: :json)
