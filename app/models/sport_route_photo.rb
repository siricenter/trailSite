class SportRoutePhoto < ActiveRecord::Base
  validates :title, :url, :sport_route, presence:true
  belongs_to :sport_route
    
    def self.search(search)
        if search
            self.where("title like ?", "%#{search}%")
        else
            self.all
        end
    end
end
