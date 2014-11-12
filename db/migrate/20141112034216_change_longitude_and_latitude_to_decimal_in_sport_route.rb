class ChangeLongitudeAndLatitudeToDecimalInSportRoute < ActiveRecord::Migration
  def change
  	change_column :sport_routes, :latitude, :decimal
  	change_column :sport_routes, :longitude, :decimal
  end
end
