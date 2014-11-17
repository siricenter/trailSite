class WallPhoto < ActiveRecord::Base
  validates :title, :url, :wall, presence:true
  belongs_to :wall
end
