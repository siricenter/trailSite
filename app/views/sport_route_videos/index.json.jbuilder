json.array!(@sport_route_videos) do |sport_route_video|
  json.extract! sport_route_video, :id, :title, :sport_route_id, :url, :description, :user_id
  json.url sport_route_video_url(sport_route_video, format: :json)
end
