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
 AdminUser.create!(email: 'admin1@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
