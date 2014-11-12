# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sport_route do
    wall {FactoryGirl.create(:wall)}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom {1+rand(16)}
    description Faker::Lorem.paragraph
    directions Faker::Lorem.paragraph
    danger_rating {getDanger()}
    bolts {getYDS()}
    stars {1 + rand(5)}
    pitches {1 + rand(5)}
    yds_grade {getYDS()}
    anchor {getAnchor()}
  end
end

def getYDS
    yds = ["5.1", "5.2", "5.3", "5.4", "5.5", "5.6", "5.7", "5.8", "5.9", 
            "5.10a", "5.10b", "5.10c", "5.10d", 
            "5.11a", "5.11b", "5.11c", "5.11d", 
            "5.12a", "5.12b", "5.12c", "5.12d", 
            "5.13a", "5.13b", "5.13c", "5.13d",
            "5.14a", "5.14b", "5.14c", "5.14d",
            "5.15a", "5.15b", "5.15c", "5.15d"]
            return yds[rand(33)]
end

def getDanger
    danger = ["none", "PG", "PG-13", "R", "X"]
    return danger[rand(5)]
end

def getAnchor
    anc = ["none", "Shuts", "Rings", "Chains", "Bolts"]
    return anc[rand(5)]
end