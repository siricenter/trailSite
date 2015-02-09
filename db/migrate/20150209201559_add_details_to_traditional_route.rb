class AddDetailsToTraditionalRoute < ActiveRecord::Migration
  def change
      add_reference :traditional_routes, :grade, index: true
      add_column :traditional_routes, :next_route, :integer, :references => "traditional_routes"
      add_column :traditional_routes, :prev_route, :integer, :references => "traditional_routes"
  end
end
