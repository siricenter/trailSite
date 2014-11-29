class User < ActiveRecord::Base
  @@types = ["admin", "manager", "defualt"]

  validates :username, :password, :salt, :first_name, :last_name, :email, presence: true
  validates :user_type,  inclusion: { in: @@types }
  validates :email, email_format: { message: "doesn't look like an email address" }


  before_validation {if self.user_type == nil then self.user_type = "defualt" end}
  def self.types
    @@types.clone
  end

end
