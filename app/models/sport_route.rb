require 'yds_grade'
require 'danger_rating'
require 'anchor_type'

class SportRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :bolts, :stars, :pitches, :yds_grade, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }, allow_nil: true
	validates :bolts, numericality: { :greater_than_or_equal_to => 0 }
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }, allow_nil: true
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }, allow_nil: true
	validates :stars, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
	validates :yds_grade, inclusion: { in: YdsGrade.getArray() }
	validates :danger_rating, inclusion: { in: DangerRating.getArray() }
	validates :anchor, inclusion: { in: AnchorType.getArray() }
  	belongs_to :wall
  	has_many :sport_route_photos
end
