require 'danger_rating'
require 'anchor_type'

class SportRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :bolts, :pitches, :length, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }, allow_nil: true
	validates :bolts, numericality: { :greater_than_or_equal_to => 0 }
	validates :danger_rating, inclusion: { in: DangerRating.getArray() }
	validates :anchor, inclusion: { in: AnchorType.getArray() }
  	belongs_to :wall
  	has_many :sport_route_photos
    belongs_to :grade
    has_many :sport_routes
    belongs_to :sport_route
end
