# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

company = Company.create(name: 'fake company', address: '123 main', phone: '123-456-3454')
company2 = Company.create(name: 'fake company3', address: '123 fake', phone: '123-456-3454')
company3 = Company.create(name: 'fake company2', address: '123 fake', phone: '123-456-3454')
location1 = Location.create(name: 'chicago')

offer1 = Offer.create(reward: 300, description: 'chiro services', company: company, location: location1)
offer2= Offer.create(reward: 200, description: 'comcast', company: company2, location: location1)
offer3 = Offer.create(reward: 150, description: 'direct tv', company: company3, location: location1)

offer1.tag_list.add("first_name", "last_name")
offer2.tag_list.add("first_name", "last_name")
offer3.tag_list.add("first_name", "last_name")



offer1.save!
offer2.save!
offer3.save!

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

a = AdminUser.create!(email: "xeroshogun@gmail.com", password: "sandrock", company: company)