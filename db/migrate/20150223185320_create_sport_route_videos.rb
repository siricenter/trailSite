class CreateSportRouteVideos < ActiveRecord::Migration
  def change
    create_table :sport_route_videos do |t|
      t.string :title
      t.references :sport_route, index: true
      t.string :url
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end