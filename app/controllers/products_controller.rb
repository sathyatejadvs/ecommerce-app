class ProductsController < InheritedResources::Base
    before_action :set_product, only: [:show, :edit, :update, :destroy]
	def index
   		@products = Product.all
    end
    
	def show

  	end

  	def new
    	@product = Product.new
  	end

	def create
    	@product = Product.new(product_params)

    	respond_to do |format|
      		if @product.save
	        format.html { redirect_to @product, notice: 'Product was successfully created.' }
	        format.json { render :show, status: :created, location: @product }
     		else
	        format.html { render :new }
	        format.json { render json: @product.errors, status: :unprocessable_entity }
      		end
   		 end
  	end


  private
  	def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :description, :price, :main_image, :thumb_image)
    end

end
