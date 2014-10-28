class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.references :crag, index: true
      t.string :name
      t.decimal :longitude
      t.decimal :latitude
      t.integer :zoom
      t.text :directions
      t.text :description
      t.text :history

      t.timestamps
    end
  end
end
