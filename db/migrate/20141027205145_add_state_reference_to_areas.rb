class AddStateReferenceToAreas < ActiveRecord::Migration
  def change
    add_reference :areas, :state, index: true
  end
end
