class Region < ActiveRecord::Base
	validates :name, :latitude, :longitude, :zoom, presence:true
end
