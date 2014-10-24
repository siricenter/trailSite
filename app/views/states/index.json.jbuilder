json.array!(@states) do |state|
  json.extract! state, :id, :region_id, :name, :latitude, :longitude, :zoom, :history
  json.url state_url(state, format: :json)
end
