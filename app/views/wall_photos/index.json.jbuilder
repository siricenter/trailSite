json.array!(@wall_photos) do |wall_photo|
  json.extract! wall_photo, :id, :title, :wall_id, :url
  json.url wall_photo_url(wall_photo, format: :json)
end
