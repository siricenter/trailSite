json.array!(@walls) do |wall|
  json.extract! wall, :id, :crag_id, :name, :longitude, :latitude, :zoom, :directions, :description, :history
  json.url wall_url(wall, format: :json)
end
