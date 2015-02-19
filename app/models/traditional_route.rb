require 'danger_rating'

class TraditionalRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :pitches, :anchor, :length, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }, allow_nil: true
<<<<<<< HEAD
=======
# 	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }, allow_nil: true
# 	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }, allow_nil: true
>>>>>>> fromV46
	validates :danger_rating, inclusion: { in: DangerRating.getArray() }
  belongs_to :wall
  has_many :traditional_route_photos
	belongs_to :grade
	has_many :traditional_routes
end
