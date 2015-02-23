class CreateTraditionalRouteVideos < ActiveRecord::Migration
  def change
    create_table :traditional_route_videos do |t|
      t.string :title
      t.references :traditional_route, index: true
      t.string :url
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
