class AddDetailsToBoulderRoute < ActiveRecord::Migration
  def change
      add_reference :boulder_routes, :grade, index: true
      add_column :boulder_routes, :next_route, :integer, :references => "boulder_routes"
      add_column :boulder_routes, :prev_route, :integer, :references => "boulder_routes"
  end
end
