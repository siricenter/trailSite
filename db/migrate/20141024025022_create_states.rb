class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.references :region
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zoom
      t.text :history

      t.timestamps
    end
  end
end
