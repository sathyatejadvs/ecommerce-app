json.extract! address, :id, :name, :phone, :email, :address_line1, :address_line2, :created_at, :updated_at
json.url address_url(address, format: :json)
