class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:name, :phone, :email, :address_line1, :address_line2)
    end

end
