class TraditionalRoutePhoto < ActiveRecord::Base
  validates :title, :url, :traditional_route, presence:true
  belongs_to :traditional_route
end
