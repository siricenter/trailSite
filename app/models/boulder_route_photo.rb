class BoulderRoutePhoto < ActiveRecord::Base
  validates :title, :url, :boulder_route, presence:true
  belongs_to :boulder_route
    
    def self.search(search)
        if search
            self.where("title like ?", "%#{search}%")
        else
            self.all
        end
    end
end
