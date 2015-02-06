class AddNextRouteRefToSportRoutes < ActiveRecord::Migration
  def change
      add_column :sport_routes, :next_route, :integer, :references => "sport_routes"
      add_column :sport_routes, :prev_route, :integer, :references => "sport_routes"
  end
end
