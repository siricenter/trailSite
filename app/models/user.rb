class User < ActiveRecord::Base
  # this array defines valid user types
  @@types = ["admin", "manager", "defualt"] 

  # validation
  validates :username, :password, :first_name, :last_name, :user_type, :email, presence: true
  validates :user_type,  inclusion: { in: @@types }
  validates :email, email_format: { message: "doesn't look like an email address" }
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6, maximum: 15 }
  validates_confirmation_of :password

  # hooks
  before_validation {if self.user_type == nil then self.user_type = "defualt" end} # if no type is defined then use defualt
  before_save :encrypt_password

  # can be used to authenticate users
  def self.authenticate(username, password)
    user = find_by_username(username)
    if user != nil && user.password == BCrypt::Engine.hash_secret(password, user.salt)
        user
    else
        nil
    end
  end

  # lets you have read access to the user types
  def self.types
    @@types.clone
  end

  private
  # encrypt password before saving
  def encrypt_password
    if self.password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(password, self.salt)
    end
  end

end
