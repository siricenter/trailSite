class SportRoutePhoto < ActiveRecord::Base
  validates :title, :url, :sport_route, presence:true
  belongs_to :sport_route
end
