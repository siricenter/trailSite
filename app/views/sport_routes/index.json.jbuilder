json.array!(@sport_routes) do |sport_route|
  json.extract! sport_route, :id, :name, :latitude, :longitude, :zoom, :description, :directions, :wall_id, :danger_rating, :bolts, :stars, :pitches, :yds_grade, :anchor
  json.url sport_route_url(sport_route, format: :json)
end
