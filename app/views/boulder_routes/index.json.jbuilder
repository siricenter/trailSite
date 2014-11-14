json.array!(@boulder_routes) do |boulder_route|
  json.extract! boulder_route, :id, :name, :latitude, :longitude, :zoom, :description, :directions, :wall_id, :danger_rating, :stars, :pads, :hueco_grade, :length
  json.url boulder_route_url(boulder_route, format: :json)
end
