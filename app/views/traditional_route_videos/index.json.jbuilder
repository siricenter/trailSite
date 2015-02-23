json.array!(@traditional_route_videos) do |traditional_route_video|
  json.extract! traditional_route_video, :id, :title, :traditional_route_id, :url, :description, :user_id
  json.url traditional_route_video_url(traditional_route_video, format: :json)
end
