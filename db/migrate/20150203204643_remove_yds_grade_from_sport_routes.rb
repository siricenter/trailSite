class RemoveYdsGradeFromSportRoutes < ActiveRecord::Migration
  def change
    remove_column :sport_routes, :, :string
  end
end
