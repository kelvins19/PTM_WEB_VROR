json.extract! customer, :id, :nama_pelanggan, :alamat, :daerah, :created_at, :updated_at
json.url customer_url(customer, format: :json)
