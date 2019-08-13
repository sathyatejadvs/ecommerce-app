ActiveAdmin.register Product do

  permit_params :title, :description, :price, :main_image, :thumb_image
 	
	config.filters = false
	config.batch_actions = false

	# index :as => :grid do |product|
	#     div do
	#   		product.main_image
 #    	end
	# end

    form do |f|
	    f.inputs do
	      f.input :title
	      f.input :description
	      f.input :price
		  f.input :main_image, :as => :file 
		  f.input :thumb_image, :as => :file 
		end
     f.actions
 	end
	# sidebar :help do
		 # "Need help? Email us at help@example.com"
	# end
	
end
