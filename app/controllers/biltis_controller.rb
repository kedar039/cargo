class BiltisController < InheritedResources::Base

  private

    def bilti_params
	    params.require(:bilti).permit(:consigner, :consignee, :goods, :invoice_number, :asset_value, :tin_no, :charged_kgs, :service_tax_paid_by, :transit_charge, :st_charge, :others, :cc, :fov, :aoc, :total, :client_id, :company_id)
    end
end

