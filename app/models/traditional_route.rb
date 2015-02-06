require 'danger_rating'

class TraditionalRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :stars, :pitches, :anchor, :length, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }, allow_nil: true
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }, allow_nil: true
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }, allow_nil: true
	validates :danger_rating, inclusion: { in: DangerRating.getArray() }
  belongs_to :wall
  has_many :traditional_route_photos
end
