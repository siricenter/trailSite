require 'danger_rating'
require 'hueco_grade'

class BoulderRoute < ActiveRecord::Base
  validates :name, :wall, :danger_rating, :stars, :pads, :hueco_grade, :length, presence:true
  validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }
  validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }
  validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }
  validates :stars, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
  validates :hueco_grade, inclusion: { in: HuecoGrade.getArray() }
  validates :danger_rating, inclusion: { in: DangerRating.getArray() }
  belongs_to :wall
end
