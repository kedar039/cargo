ActiveAdmin.register Bilti do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :model, :consigner, :consignee, :goods, :invoice_number, :asset_value, :tin_no, :charged_kgs, :service_tax_paid_by, :transit_charge, :st_charge, :others, :cc, :fov, :aoc, :total, :client_id, :company_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
