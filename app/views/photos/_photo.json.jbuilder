json.extract! photo, :id, :driver_id, :photo, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
