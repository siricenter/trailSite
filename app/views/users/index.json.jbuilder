json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :salt, :first_name, :last_name, :email, :user_type
  json.url user_url(user, format: :json)
end
