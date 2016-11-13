# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs

User.destroy_all
Item.destroy_all
sherri = User.new({first_name:"Sherri",last_name:"Amin",email:"sherri@yard.com",password:"asdfgh",address:"123 First Street",city:"San Francisco",state:"California"})
farsh = User.new({first_name:"Farsh",last_name:"Lala",email:"farsh@yard.com",password:"asdfgh",address:"123 First Street",city:"San Francisco",state:"California"})

sherri.save
farsh.save

s1 = Item.new({name:"bicycle",price:399.99})
sherri.items << s1
s2 = Item.new({name:"lamp",price:40.00})
sherri.items << s2

f1 = Item.new({name:"history book", price:10.00})
farsh.items << f1
f2 = Item.new({name:"desk",price:45.99})
farsh.items << f2
