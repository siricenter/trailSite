class BoulderRouteVideo < ActiveRecord::Base
  belongs_to :boulder_route
  belongs_to :user
        
    def self.search(search)
        if search
            self.where("title like ?", "%#{search}%")
        else
            self.all
        end
    end
end
