class CreateBoulderRouteVideos < ActiveRecord::Migration
  def change
    create_table :boulder_route_videos do |t|
      t.string :title
      t.references :boulder_route, index: true
      t.string :url
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
