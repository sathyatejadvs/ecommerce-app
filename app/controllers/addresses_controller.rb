class AddressesController < InheritedResources::Base
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
	@addresses = Address.all
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  # GET /addresses/new
  def new
  	@address = Address.new
  end

  # GET /addresses/1/edit
  def edit
  end

  def create
  	@address = Address.new(address_params)

  	respond_to do |format|
  		if @address.save
  			format.html { redirect_to @address, notice: 'address was successfully created.' }
  			format.json { render :show, status: :created, location: @address }
  		else
  			format.html { render :new }
  			format.json { render json: @address.errors, status: :unprocessable_entity }
  		end
  	end
  end

  private

  def set_address
  @address = Address.find(params[:id])
  end

  def address_params
  	params.require(:address).permit(:name, :phone, :email, :address_line1, :address_line2)
  end

end
