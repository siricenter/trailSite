require 'yds_grade'
require 'danger_rating'

class TraditionalRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :stars, :pitches, :yds_grade, :anchor, :length, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }, allow_nil: true
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }, allow_nil: true
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }, allow_nil: true
	validates :stars, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
	validates :yds_grade, inclusion: { in:  YdsGrade.getArray() }
	validates :danger_rating, inclusion: { in: DangerRating.getArray() }
  belongs_to :wall
  has_many :traditional_route_photos
end
