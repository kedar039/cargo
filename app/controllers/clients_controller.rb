class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:name, :address, :city, :zip, :state, :country, :email, :phone, :company_id)
    end
end

