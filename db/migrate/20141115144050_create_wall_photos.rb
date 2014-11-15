class CreateWallPhotos < ActiveRecord::Migration
  def change
    create_table :wall_photos do |t|
      t.string :title
      t.references :wall, index: true
      t.string :url

      t.timestamps
    end
  end
end
