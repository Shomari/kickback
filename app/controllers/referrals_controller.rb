class ReferralsController < ApplicationController

	def new
		@referral = Referral.new
		@tags = Offer.first.tag_list
		# @fields = offer.attributes
	end
end
