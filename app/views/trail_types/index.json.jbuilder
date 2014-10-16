json.array!(@trail_types) do |trail_type|
  json.extract! trail_type, :id, :name
  json.url trail_type_url(trail_type, format: :json)
end
