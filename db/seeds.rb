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
NA = Region.create(name: 'North America', latitude: 56.746, longitude: -105.605469, zoom: 3, description: 'North America', history: 'Foo')
Region.create(name: 'South America', latitude: -4.429765, longitude: -55.722656, zoom: 3, description: 'South America', history: 'Foo')
Region.create(name: 'Central America', latitude: 13.442528, longitude: -85.571878, zoom: 5, description: 'Central America', history: 'Foo')

State.delete_all
State.create(name: 'Nevada', region: NA, latitude: 39.07890809706477, longitude: -116.103515625, zoom: 6, description: 'foo', history: 'foo')
CA = State.create(name: 'California', region: NA, latitude: 37.2827946491104, longitude: -121.5087890625, zoom: 6, description: 'foo', history: 'foo')
State.create(name: 'Arizona', region: NA, latitude: 34.19817309627723, longitude: -111.214599609375, zoom: 6, description: 'foo', history: 'foo')

Area.delete_all
RQ = Area.create(name: 'Riverside Quarry', state: CA, latitude: 34.014052318360534, longitude: -117.41145027923585, zoom: 15)
Area.create(name: 'New Jack City', state: CA, latitude: 34.66904088374378, longitude: -116.98752880096436, zoom: 15)
B = Area.create(name: 'Bishop', state: CA, latitude: 37.3685200710562, longitude: -118.49201202392578, zoom: 12)

Territory.delete_all
Q = Territory.create(name: 'The Quarry', area: RQ, latitude: 34.014052318360534, longitude: -117.41145027923585, zoom: 15)
BK = Territory.create(name: 'Buttermilks', area: B, latitude: 37.32887739478305, longitude: -118.57998847961426, zoom: 14)
Territory.create(name: 'The Happys', area: B, latitude: 37.41601592725032, longitude: -118.4540319442749, zoom: 15)
Territory.create(name: 'The Sads', area: B, latitude: 37.421980615354, longitude: -118.43321800231934, zoom: 15)

Crag.delete_all
CQ = Crag.create(name: 'The Quarry', territory: Q, latitude: 34.014052318360534, longitude: -117.41145027923585, zoom: 15)
CB = Crag.create(name: 'Checkerboard', territory: BK, latitude: 37.32440689902122, longitude: -118.5820484161377, zoom: 15)
Crag.create(name: 'Dale\'s Camp', territory: BK, latitude: 37.31874161393784, longitude: -118.58084678649902, zoom: 15)
Crag.create(name: 'Secrets of the Beehive Area', territory: BK, latitude: 37.33321113293153, longitude: -118.57479572296143, zoom: 15)

Wall.delete_all
Wall.create(name: 'The Pawn', crag: CB, latitude: 37.325303, longitude: -118.57966899999997, zoom: 15)
Wall.create(name: 'High and Mighty Boulder', crag: CB, latitude: 37.325495, longitude: -118.57976500000001, zoom: 15)
Wall.create(name: 'Green Slab Boulder', crag: CB, latitude: 37.325564, longitude: -118.57986499999998, zoom: 15)
TA = Wall.create(name: 'The Alcove', crag: CQ, latitude: 34.0140523183605, longitude: -117.411450279236, zoom: 15)

SportRoute.delete_all
SportRoute.create(name: 'Procrastination', wall: TA, length: 1, latitude: 1.0, longitude: 1.0, zoom: 1, danger_rating: 'none', bolts: 15, stars: 3, pitches: 1, anchor: "Rings", description: "", directions: "")
SportRoute.create(name: 'Rock Canyon', wall: TA, length: 1, latitude: 40.2693045, longitude: -111.64208, zoom: 15, danger_rating: 'none', bolts: 15, stars: 3, pitches: 1, anchor: "Rings", description: "", directions: "")

TraditionalRoute.delete_all
TraditionalRoute.create(name: 'Easte Arete', wall: TA, danger_rating: 'none', latitude: 37.32829, longitude: -118.57478, zoom: 15, pitches: 1, anchor: 'none', length: 1)

BoulderRoute.delete_all
BoulderRoute.create(name: 'Procrastination', wall: TA, latitude: 1.0, longitude: 1.0, zoom: 1)

Grade.delete_all
Grade.create(french: '1',      uk: 'HVD',      australia: '8',     uiaa: 'I',      usa: '5.2',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '2',      uk: 'HVD',      australia: '9',     uiaa: 'II',     usa: '5.3',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '2',      uk: '-',        australia: '10',    uiaa: 'III',    usa: '5.4',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '3',      uk: '-',        australia: '11',    uiaa: 'III',    usa: '5.4',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '3',      uk: 'MS',       australia: '12',    uiaa: 'III',    usa: '5.5',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '4',      uk: 'S',        australia: '13-',   uiaa: 'IV',     usa: '5.6',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '4+',     uk: 'VS',       australia: '13+',   uiaa: 'V-',     usa: '5.7',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '5a',     uk: '-',        australia: '14',    uiaa: 'V',      usa: '5.8',     hueco: '-',     ukb: '-',   fontainebleau: '-')
Grade.create(french: '5b',     uk: 'HVS',      australia: '15',    uiaa: 'V+',     usa: '5.9',     hueco: 'V0',    ukb: 'B1',  fontainebleau: '4')
Grade.create(french: '6a',     uk: 'E1 5b',    australia: '19',    uiaa: 'VI+',    usa: '5.10a',   hueco: 'V0+',   ukb: 'B2',  fontainebleau: '4+')
Grade.create(french: '6a+',    uk: 'E2 5c',    australia: '19',    uiaa: 'VI+',    usa: '5.10b',   hueco: 'V0+',   ukb: 'B2',  fontainebleau: '4+')
Grade.create(french: '6a+',    uk: 'E2 5c',    australia: '20',    uiaa: 'VII-',   usa: '5.10b',   hueco: 'V0+',   ukb: 'B2',  fontainebleau: '4+')
Grade.create(french: '6b',     uk: '-',        australia: '20',    uiaa: 'VII',    usa: '5.10c',   hueco: 'V1',    ukb: 'B3',  fontainebleau: '5')
Grade.create(french: '6b+',    uk: 'E3 5c',    australia: '21',    uiaa: 'VII+',   usa: '5.10d',   hueco: 'V1',    ukb: 'B3',  fontainebleau: '5')
Grade.create(french: '6c',     uk: '-',        australia: '21',    uiaa: 'VII+',   usa: '5.11a',   hueco: 'V2',    ukb: 'B4',  fontainebleau: '6a')
Grade.create(french: '6c',     uk: '-',        australia: '22',    uiaa: 'VIII-',  usa: '5.11a',   hueco: 'V2',    ukb: 'B4',  fontainebleau: '6a')
Grade.create(french: '6c+',    uk: 'E4 5a',    australia: '22',    uiaa: 'VIII-',  usa: '5.11b',   hueco: 'V3',    ukb: 'B5',  fontainebleau: '6a+')
Grade.create(french: '6c+',    uk: 'E4 5a',    australia: '22',    uiaa: 'VIII-',  usa: '5.11b',   hueco: 'V3',    ukb: 'B6',  fontainebleau: '6a+')
Grade.create(french: '7a',     uk: '-',        australia: '23',    uiaa: 'VIII',   usa: '5.11c',   hueco: 'V4',    ukb: 'B5',  fontainebleau: '6b')
Grade.create(french: '7a',     uk: '-',        australia: '23',    uiaa: 'VIII',   usa: '5.11d',   hueco: 'V4',    ukb: 'B6',  fontainebleau: '6b')
Grade.create(french: '7a+',    uk: 'E5 6b',    australia: '24',    uiaa: 'VIII',   usa: '5.12a',   hueco: 'V4',    ukb: 'B5',  fontainebleau: '6c')
Grade.create(french: '7a+',    uk: 'E5 6b',    australia: '24',    uiaa: 'VIII+',  usa: '5.12a',   hueco: 'V4',    ukb: 'B6',  fontainebleau: '6c')
Grade.create(french: '7b',     uk: '-',        australia: '25',    uiaa: 'VIII+',  usa: '5.12b',   hueco: 'V5',    ukb: 'B6',  fontainebleau: '6c+')
Grade.create(french: '7b+',    uk: 'E6 6b',    australia: '26',    uiaa: 'IX-',    usa: '5.12c',   hueco: 'V6',    ukb: 'B7',  fontainebleau: '7a')
Grade.create(french: '7c',     uk: '-',        australia: '27',    uiaa: 'IX',     usa: '5.12d',   hueco: 'V6',    ukb: 'B7',  fontainebleau: '7a')
Grade.create(french: '7c+',    uk: '-',        australia: '28',    uiaa: 'IX',     usa: '5.13a',   hueco: 'V7',    ukb: 'B8',  fontainebleau: '7a+')
Grade.create(french: '7c+',    uk: '-',        australia: '28',    uiaa: 'IX+',    usa: '5.13a',   hueco: 'V7',    ukb: 'B8',  fontainebleau: '7a+')
Grade.create(french: '8a',     uk: 'E7 6c',    australia: '29',    uiaa: 'IX+',    usa: '5.13b',   hueco: 'V8',    ukb: 'B9',  fontainebleau: '7b+')
Grade.create(french: '8a+',    uk: '-',        australia: '30',    uiaa: 'X-',     usa: '5.13c',   hueco: 'V9',    ukb: 'B9',  fontainebleau: '7c')
Grade.create(french: '8b',     uk: 'E8 7a',    australia: '31',    uiaa: 'X',      usa: '5.13d',   hueco: 'V9',    ukb: 'B9',  fontainebleau: '7c')
Grade.create(french: '8b+',    uk: '-',        australia: '32',    uiaa: 'X',      usa: '5.14a',   hueco: 'V10',   ukb: 'B10', fontainebleau: '7c+')
Grade.create(french: '8b+',    uk: '-',        australia: '32',    uiaa: 'X+',     usa: '5.14a',   hueco: 'V10',   ukb: 'B10', fontainebleau: '7c+')
Grade.create(french: '8c',     uk: 'E9 7b',    australia: '33',    uiaa: 'X+',     usa: '5.14b',   hueco: 'V11',   ukb: 'B11', fontainebleau: '8a')
Grade.create(french: '8c+',    uk: '-',        australia: '34',    uiaa: 'XI-',    usa: '5.14c',   hueco: 'V12',   ukb: 'B12', fontainebleau: '8a+')
Grade.create(french: '9a',     uk: 'E10 7c',   australia: '35',    uiaa: 'XI',     usa: '5.14d',   hueco: 'V13',   ukb: 'B12', fontainebleau: '8a+')
Grade.create(french: '9a',     uk: 'E10 7c',   australia: '35',    uiaa: 'XI',     usa: '5.15',    hueco: 'V13',   ukb: 'B12', fontainebleau: '8a+')

