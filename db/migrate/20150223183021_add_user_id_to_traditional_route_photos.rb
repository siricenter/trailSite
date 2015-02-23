class AddUserIdToTraditionalRoutePhotos < ActiveRecord::Migration
  def change
      add_reference :traditional_route_photos, :user
  end
end
