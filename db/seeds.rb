puts "Creating users..."
user1 = User.create(name: "Antony")
user2 = User.create(name: "Cheptoo")
user3 = User.create(name: "Otieno")
user4 = User.create(name: "Leon")

puts "Creating products..."
product1 = Product.create(name: "Lotion", price: 96)
product2 = Product.create(name: "Earphones", price: 132)
product3 = Product.create(name: "calculator", price: 500)
product4 = Product.create(name: "Pens", price: 1)
product5 = Product.create(name: "Tissue", price: 35)

puts "Creating reviews..."
review1 =Review.create(comment: "This is a great product!", star_rating: 5, user_id: user1.id, product_id: product4.id)
review2 =Review.create(comment: "This is a great product!", star_rating: 5, user_id: user4.id, product_id: product2.id)
review3 =Review.create(comment: "This is a great product!", star_rating: 5, user_id: user3.id, product_id: product1.id)
review4 =Review.create(comment: "This is a great product!", star_rating: 5, user_id: user2.id, product_id: product3.id)
puts "Seeding done!"
