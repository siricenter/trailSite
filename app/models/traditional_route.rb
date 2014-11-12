class TraditionalRoute < ActiveRecord::Base
	validates :name, :wall, :danger_rating, :stars, :pitches, :yds_grade, :anchor, :length, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }
	validates :stars, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
	validates :yds_grade, inclusion: { in: ["5.1", "5.2", "5.3", "5.4", "5.5", "5.6", "5.7", "5.8", "5.9", 
		"5.10a", "5.10b", "5.10c", "5.10d", 
		"5.11a", "5.11b", "5.11c", "5.11d", 
		"5.12a", "5.12b", "5.12c", "5.12d", 
		"5.13a", "5.13b", "5.13c", "5.13d",
		"5.14a", "5.14b", "5.14c", "5.14d",
		"5.15a", "5.f15b", "5.15c", "5.15d"] }
	validates :danger_rating, inclusion: { in: ["none", "PG", "PG-13", "R", "X"] }
  	belongs_to :wall
end
