json.array!(@boulder_route_photos) do |boulder_route_photo|
  json.extract! boulder_route_photo, :id, :title, :boulder_route_id, :url
  json.url boulder_route_photo_url(boulder_route_photo, format: :json)
end
