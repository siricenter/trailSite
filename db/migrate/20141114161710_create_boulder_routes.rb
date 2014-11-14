class CreateBoulderRoutes < ActiveRecord::Migration
  def change
    create_table :boulder_routes do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zoom
      t.text :description
      t.text :directions
      t.references :wall, index: true
      t.string :danger_rating
      t.integer :stars
      t.integer :pads
      t.string :hueco_grade
      t.decimal :length

      t.timestamps
    end
  end
end
