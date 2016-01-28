ActiveAdmin.register Referral do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :revenue
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
# company = current_user
# scope_to :current_company(company)

# scope_to :current_user.get_referrals

scope_to do
    current_admin_user.get_referrals
end

member_action :close, method: :get do
	# resorce.close_referral!
	# redirect_to resorce_path
end

form do |f| #form from edit
	f.input :revenue
	f.submit
end



controller do 
	def close
		resource.close_referral!
		# redirect_to root_path
	end

	def update
		resource.update_attributes(permitted_params[:referral])
		redirect_to admin_referral_path
	end

	# def permitted_params
	# 	binding.pry
 #      params.permit(:referral => [:revenue])
 #      # params.permit! # allow all parameters
 #    end
end

# can only click on it
# click button, it sends email, canges status to succcess

# adminuser/currentuser belongs to company, which has offers, which has referrals



#only see referrals that belong to this company

# Company is Admin User- you will need to namespace or change this model so that admin users are company
# Also need to create super user which is you

action_item only: :show do |resource|
  link_to('Close Referral', close_admin_referral_path)
end

index do 
	id_column
	column :first_name
	column :user
	actions
end


end
