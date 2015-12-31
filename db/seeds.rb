# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

company = Company.create(name: 'fake company', address: '123 main', phone: '123-456-3454')
location1 = Location.create(name: 'chicago')

Offer.create(reward: 300, description: 'chiro services', company: company, location: location1)
Offer.create(reward: 200, description: 'comcast', company: company, location: location1)
Offer.create(reward: 150, description: 'direct tv', company: company, location: location1)
