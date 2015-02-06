class AddGradeRefToSportRoute < ActiveRecord::Migration
  def change
      add_reference :sport_routes, :grade, index: true
  end
end
