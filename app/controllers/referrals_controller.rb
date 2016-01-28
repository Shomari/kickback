class ReferralsController < ApplicationController

	def new
		@offer = Offer.find params[:offer_id]
		@referral = Referral.new(offer: @offer)
		@tags = @offer.tag_list
	# 	# @fields = offer.attributes
	end

	# after referrals submitted
	# needs to charge 1 dollar
	# user account screen to see referrals
	# send emails to the contact user for the company

	# active admin to see referrals


	def view
		binding.pry
		# @offer = Offer.find params[:referral_id]
		# company = @offer.company
		# @offer.build_referral
		# @referral = Referral.new
		@tags = @offer.tag_list
		render 'new'
	end

	#validation

	def create
		user = current_user
		@referral = Referral.new(referral_params)
		@referral.user    = user
		@referral.offer   = Offer.find params[:offer_id]
		@referral.save!
		#has to relate to customer
		#has to relate to company
		redirect_to root_path
	end

	private

	def referral_params
		params.required(:referral).permit!
	end
	
end