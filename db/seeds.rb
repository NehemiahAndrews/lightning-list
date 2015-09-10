# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create(name: "ABC Letters", phone_number: '313-111-2222', contact_name: 'Al Phabet', address: '1234 Easy Street',city: 'Farmington', state: 'MI', zip: '48336')