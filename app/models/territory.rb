class Territory < ActiveRecord::Base
	validates :name, :latitude, :longitude, :zoom, :area, presence:true
	validates :zoom, :numericality => { :greater_than => 0, :less_than_or_equal_to => 21 }
	validates :latitude, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }
	validates :longitude, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }
  	belongs_to :area
  	has_many :crags
    
    def self.search(search)
        if search
            self.where("name like ?", "%#{search}%")
        else
            self.all
        end
    end
end
