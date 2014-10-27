class AddDescriptionToStates < ActiveRecord::Migration
  def change
  	add_column :states, :description, :text
  end
end
