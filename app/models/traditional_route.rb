require 'danger_rating'

class TraditionalRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :pitches, :anchor, :length, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }, allow_nil: true
	validates :danger_rating, inclusion: { in: DangerRating.getArray() }
  belongs_to :wall
  has_many :traditional_route_photos
    belongs_to :grade
    has_many :traditional_routes
end
