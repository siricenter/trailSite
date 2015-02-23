json.array!(@boulder_route_videos) do |boulder_route_video|
  json.extract! boulder_route_video, :id, :title, :boulder_route_id, :url, :description, :user_id
  json.url boulder_route_video_url(boulder_route_video, format: :json)
end
