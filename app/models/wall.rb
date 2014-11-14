class Wall < ActiveRecord::Base
	validates :name, :latitude, :longitude, :zoom, :crag, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }
  	belongs_to :crag
  	has_many :sport_routes
  	has_many :traditional_routes
    has_many :boulder_routes
end
