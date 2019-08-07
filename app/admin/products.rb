ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :description, :price, :main_image, :thumb_image
  
  config.filters = false

  index as: :grid do |product|
    	
  end

  ActiveAdmin.setup do |config|  
  	config.footer = 'Ecommerce Application'
    config.download_links = false
  	config.batch_actions = false
  end
    
end
