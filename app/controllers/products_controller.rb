class ProductsController < InheritedResources::Base
	def index
	end

  private

    def product_params
      params.require(:product).permit(:title, :description, :price, :main_image, :thumb_image)
    end

end
