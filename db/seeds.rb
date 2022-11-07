# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

Review.create(user_id: user1.id, product_id: product1.id, comment: "As described in the picture", rating: 8)
Review.create(user_id: user2.id, product_id: product2.id, comment: "Not good to write on", rating: 2)
Review.create(user_id: user3.id, product_id: product3.id, comment: "Very functional", rating: 7)
Review.create(user_id: user4.id, product_id: product4.id, comment: "Would recommend", rating: 9)
Review.create(user_id: user5.id, product_id: product5.id, comment: "Disappointed", rating: 1)

puts "Seeding done!"