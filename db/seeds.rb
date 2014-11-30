# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Hotel.create!(hotelname: 'Hyatt' , address: '1234 East Main Street, Lexington, KY' , website: 'http://hyatt.com', phone: '859-123-4567')
Room.create!(roomnumber: '101' , roomtype: 'Double King' , roomdescription: 'Double Full Size', hotel_id: '1', hotelname: 'Hyatt' )

