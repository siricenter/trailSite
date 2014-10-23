class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zoom
      t.text :history

      t.timestamps
    end
  end
end
