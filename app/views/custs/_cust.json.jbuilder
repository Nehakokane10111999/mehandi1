json.extract! cust, :id, :name, :mobile, :email, :address, :dob, :created_at, :updated_at
json.url cust_url(cust, format: :json)
