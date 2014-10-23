json.array!(@regions) do |region|
  json.extract! region, :id, :name, :latitude, :longitude, :zoom, :history
  json.url region_url(region, format: :json)
end
