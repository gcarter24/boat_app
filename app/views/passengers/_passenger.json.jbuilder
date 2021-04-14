json.extract! passenger, :id, :name, :status, :age, :boat_id, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)
