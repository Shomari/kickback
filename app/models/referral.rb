class Referral < ActiveRecord::Base
	belongs_to :user
	belongs_to :offer
	belongs_to :company

	accepts_nested_attributes_for :offer

	def self.current_company(company)
		where(company: company)
	end

	def close_referral!
		#send email
		self.status = "success"
		self.save!
	end
end


#create a referral