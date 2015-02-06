class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :french
      t.string :uk
      t.string :australia
      t.string :uiaa
      t.string :usa
      t.string :hueco
      t.string :ukb
      t.string :fontainebleau
        
      t.timestamps
    end
  end
end
