class BoulderRoutePhoto < ActiveRecord::Base
  validates :title, :url, :boulder_route, presence:true
  belongs_to :boulder_route
end
