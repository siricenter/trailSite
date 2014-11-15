class CreateTraditionalRoutePhotos < ActiveRecord::Migration
  def change
    create_table :traditional_route_photos do |t|
      t.string :title
      t.references :traditional_route, index: true
      t.string :url

      t.timestamps
    end
  end
end
