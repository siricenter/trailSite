class CreateSportRoutePhotos < ActiveRecord::Migration
  def change
    create_table :sport_route_photos do |t|
      t.string :title
      t.references :sport_route, index: true
      t.string :url

      t.timestamps
    end
  end
end
