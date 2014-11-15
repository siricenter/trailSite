class CreateBoulderRoutePhotos < ActiveRecord::Migration
  def change
    create_table :boulder_route_photos do |t|
      t.string :title
      t.references :boulder_route, index: true
      t.string :url

      t.timestamps
    end
  end
end
