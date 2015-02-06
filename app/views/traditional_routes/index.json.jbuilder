json.array!(@traditional_routes) do |traditional_route|
  json.extract! traditional_route, :id, :name, :latitude, :longitude, :zoom, :description, :directions, :wall_id, :danger_rating, :gear_needed, :stars, :pitches, :, :length, :anchor
  json.url traditional_route_url(traditional_route, format: :json)
end
