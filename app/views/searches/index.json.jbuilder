json.array!(@searches) do |search|
  json.extract! search, :id, :keywords, :new, :show
  json.url search_url(search, format: :json)
end
