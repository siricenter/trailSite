class AddUserIdToBoulderRoutePhotos < ActiveRecord::Migration
  def change
      add_reference :boulder_route_photos, :user
  end
end
