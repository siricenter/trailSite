class Territory < ActiveRecord::Base
	validates :name, :latitude, :longitude, :zoom, :area, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 16 }
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }
  	belongs_to :area
  	has_many :crags
end
