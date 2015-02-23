class WallPhoto < ActiveRecord::Base
  validates :title, :url, :wall, presence:true
  belongs_to :wall
    
    def self.search(search)
        if search
            self.where("title like ?", "%#{search}%")
        else
            self.all
        end
    end
end
