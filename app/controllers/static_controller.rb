class StaticController < ApplicationController

	def admin_dashboard
	end

  def photos
    @wall_photos = WallPhoto.all
    @sport_route_photos = SportRoutePhoto.all
    @traditional_route_photos = TraditionalRoutePhoto.all
    @boulder_route_photos = BoulderRoutePhoto.all
  end

  def home
  end

end
