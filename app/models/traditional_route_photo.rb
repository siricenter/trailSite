class TraditionalRoutePhoto < ActiveRecord::Base
  validates :title, :url, :traditional_route, presence:true
  belongs_to :traditional_route
    
    def self.search(search)
        if search
            self.where("Title like ?", "%#{search}%")
        else
            self.all
        end
    end
end
