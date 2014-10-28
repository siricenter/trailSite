json.array!(@crags) do |crag|
  json.extract! crag, :id, :territory_id, :name, :longitude, :latitude, :zoom, :directions, :description, :history
  json.url crag_url(crag, format: :json)
end
