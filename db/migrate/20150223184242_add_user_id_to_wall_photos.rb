class AddUserIdToWallPhotos < ActiveRecord::Migration
  def change
      add_reference :wall_photos, :user
  end
end
