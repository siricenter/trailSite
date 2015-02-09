class CreateSportRoutes < ActiveRecord::Migration
  def change
    create_table :sport_routes do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zoom
      t.text :description
      t.text :directions
      t.references :wall, index: true
      t.string :danger_rating
      t.integer :bolts
      t.integer :stars
      t.integer :pitches
      t.string :anchor

      t.timestamps
    end
  end
end
