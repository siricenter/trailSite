class AddWallTypeToWall < ActiveRecord::Migration
  def change
  	add_column :walls, :wall_type, :string
  end
end
