class SearchController < ApplicationController

    def index
        @regions = Region.search(params[:basic_search])
        @states = State.search(params[:basic_search])
        @areas = Area.search(params[:basic_search])
        @territories = Territory.search(params[:basic_search])
        @crags = Crag.search(params[:basic_search])
        @walls = Wall.search(params[:basic_search])
        @sport_routes = SportRoute.search(params[:basic_search])
        @traditional_routes = TraditionalRoute.search(params[:basic_search])
        @boulder_routes = BoulderRoute.search(params[:basic_search])
        @sport_route_photos = SportRoutePhoto.search(params[:basic_search])
        @traditional_route_photos = TraditionalRoutePhoto.search(params[:basic_search])
        @boulder_route_photos = BoulderRoutePhoto.search(params[:basic_search])
    end

end
