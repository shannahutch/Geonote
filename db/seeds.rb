# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Shanna Hutchinson', email: 'shannahutch@gmail.com', password_digest: '1234')
 Note.create(details:'milk, sugar')
 Note.create(details:'Taylor likes the mexican hot chocolate here')