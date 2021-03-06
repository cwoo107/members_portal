ActiveAdmin.register Group do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :billing_id, :user_id, :company_id, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:billing_id, :user_id, :company_id, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
   form title: 'Group Form' do |f|
     inputs 'Details' do
       input :billing_id
       input :name

     end
     actions
   end
end
