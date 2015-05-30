# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Guest.create(
         email: 'anu@forecast.com',
         password: 'password',
         first_name: 'Anu',
         last_name: 'Olushola',
         image: 'http://s5.postimg.org/ytsvz3it3/DSC01080.jpg',
         sex: 'Female',
         birthday: '2015-01-18'
)