class AddUserIdToSportRoutePhotos < ActiveRecord::Migration
  def change
      add_reference :sport_route_photos, :user
  end
end
