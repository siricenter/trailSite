json.array!(@areas) do |area|
  json.extract! area, :id, :name, :longitude, :latitude, :zoom, :weather, :description, :history
  json.url area_url(area, format: :json)
end
