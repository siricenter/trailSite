# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(username: 'admin', password: 'overlord', user_type: 'admin', email: 'change@this.com', first_name: 'Marc', last_name: 'Blocker')
User.create(username: 'admin2', password: 'overlord', user_type: 'admin', email: 'change@this.com', first_name: 'Chad', last_name: 'Carey')

Region.delete_all
Region.create(name: 'North America', latitude: 56.746, longitude: -105.605469, zoom: 3, description: 'North America', history: 'Foo')
Region.create(name: 'South America', latitude: -4.429765, longitude: -55.722656, zoom: 3, description: 'South America', history: 'Foo')
Region.create(name: 'Central America', latitude: 13.442528, longitude: -85.571878, zoom: 5, description: 'Central America', history: 'Foo')

State.delete_all
#State.create(name: 'Nevada', region: 'North America', latitude: 39.07890809706477, longitude: -116.103515625, zoom: 6, description: 'foo', history: 'foo')
#State.create(name: 'California', region: 'North America', latitude: 37.2827946491104, longitude: -121.5087890625, zoom: 6, description: 'foo', history: 'foo')
#State.create(name: 'Arizona', region: 'North America', latitude: 34.19817309627723, longitude: -111.214599609375, zoom: 6, description: 'foo', history: 'foo')

Area.delete_all
#Area.create(name: 'Riverside Quarry', state: 'California', latitude: 34.014052318360534, longitude: -117.41145027923585, zoom: 15)
