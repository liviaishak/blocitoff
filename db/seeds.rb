require 'faker'

# Create Users
5.times do
 User.create!(
 email:    Faker::Internet.email,
 password: "helloworld",
 confirmed_at: Time.now
 )
end
users = User.all

# Create Items
5.times do
 Item.create!(
   user:  users.sample,
   name:  Faker::Lorem.sentence
 )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
