class AddDetailsToSearches < ActiveRecord::Migration
  def change
      add_column :searches, :max_rating, :integer
      add_column :searches, :min_rating, :integer
      add_column :searches, :show_no_rating, :boolean
      
      add_column :searches, :max_grade, :integer, :references => "grades"
      add_column :searches, :min_grade, :integer, :references => "grades"
      
      add_column :searches, :max_length, :float
      add_column :searches, :min_length, :float
      
      add_column :searches, :region_id, :integer, :references => "regions"
      add_column :searches, :state_id, :integer, :references => "states"
      add_column :searches, :territory_id, :integer, :references => "territories"
      add_column :searches, :crag_id, :integer, :references => "crags"
      add_column :searches, :wall_id, :integer, :references => "walls"
  end
end
