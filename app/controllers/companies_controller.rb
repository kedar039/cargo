class CompaniesController < InheritedResources::Base

  private

    def company_params
      params.require(:company).permit(:name, :address, :city, :zip, :state, :country, :email, :phone)
    end
end

