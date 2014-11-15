json.array!(@sport_route_photos) do |sport_route_photo|
  json.extract! sport_route_photo, :id, :title, :sport_route_id, :url
  json.url sport_route_photo_url(sport_route_photo, format: :json)
end
