class UsersController < ApplicationController
	
	def show
		user = current_user
		@referrals = user.referrals
	end
end