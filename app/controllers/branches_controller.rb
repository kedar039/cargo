class BranchesController < InheritedResources::Base

  private

    def branch_params
      params.require(:branch).permit(:branch_code, :branch_name, :address, :city, :zip, :state, :country, :email, :phone, :company_id)
    end
end

