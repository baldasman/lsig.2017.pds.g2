json.extract! order, :id, :price, :deadline, :description, :status, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
