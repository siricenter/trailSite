json.array!(@traditional_route_photos) do |traditional_route_photo|
  json.extract! traditional_route_photo, :id, :title, :traditional_route_id, :url
  json.url traditional_route_photo_url(traditional_route_photo, format: :json)
end
