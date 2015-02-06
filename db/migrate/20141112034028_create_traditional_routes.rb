class CreateTraditionalRoutes < ActiveRecord::Migration
  def change
    create_table :traditional_routes do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zoom
      t.text :description
      t.text :directions
      t.references :wall, index: true
      t.string :danger_rating
      t.text :gear_needed
      t.integer :stars
      t.integer :pitches
      t.string :
      t.decimal :length
      t.text :anchor

      t.timestamps
    end
  end
end
