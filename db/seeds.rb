# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# %i(electronics mobiles garments headphones chargers).each do |c|
# 	Category.create({name: c})
# end

# 100.times do |i|
# 	Product.create({
# 		title: "sample product #{i}",
# 		description: "sample product description #{i}",
# 		release_date: Time.now,
# 		category_id: i % 5 + 1,
# 		price: i * 10

# 	})
#end
 # AdminUser.create!(email: 'daggubatisatyateja@gmail.com', password: 'ssssss', password_confirmation: 'ssssss') if Rails.env.development?

1.times do |product_item|
Product.create!(
	title: "product title #{product_item}",
	description: "ruby",
	price: "370.11",
	main_image: "http://placehold.it/600x400" ,
	thumb_image: "http://placehold.it/350x200"

	)
end
puts "product is executed"