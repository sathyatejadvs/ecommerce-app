ActiveAdmin.register Product do

  permit_params :title, :description, :price, :main_image, :thumb_image
 	
	config.filters = false
	config.batch_actions = false

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
end
