json.array!(@territories) do |territory|
  json.extract! territory, :id, :area_id, :name, :longitude, :latitude, :zoom, :directions, :description, :history
  json.url territory_url(territory, format: :json)
end
