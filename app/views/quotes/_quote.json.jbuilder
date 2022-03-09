json.extract! quote, :id, :customer_id, :active, :total, :quote_type, :taxes, :fees, :shipping_address, :billing_address, :status, :purchase_order_id, :created_at, :updated_at
json.url quote_url(quote, format: :json)
