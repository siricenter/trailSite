class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.decimal :longitude
      t.decimal :latitude
      t.integer :zoom
      t.string :weather
      t.text :description
      t.text :history

      t.timestamps
    end
  end
end
