class AddLengthToSportRoute < ActiveRecord::Migration
  def change
    add_column :sport_routes, :length, :decimal
  end
end
