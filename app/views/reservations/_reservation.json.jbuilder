json.extract! reservation, :id, :room_id, :from, :to, :reserved_by, :description, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)