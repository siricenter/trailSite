# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'admin', password: 'overlord', user_type: 'admin', 
  email: 'change@this.com', first_name: 'Marc', last_name: 'Blocker')

User.create(username: 'admin2', password: 'overlord', user_type: 'admin', 
  email: 'change@this.com', first_name: 'Chad', last_name: 'Carey')
