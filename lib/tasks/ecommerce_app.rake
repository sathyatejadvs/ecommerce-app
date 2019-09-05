namespace :ecommerce_app do
  desc "Creating a product"
  task products: :environment do
  	100.times do |i|
  		Product.create(
  			title: "Sample product: #{i}",
  			description:"Sample description: #{i}",
  			price: "#{i*(2.3/5)}",
  			main_image: "https://placehold.it/350x200"
  			)
  	end
  end

end
