json.extract! customer, :id, :account_id, :name, :email, :active, :created_at, :updated_at
json.url customer_url(customer, format: :json)
