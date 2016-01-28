class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

	belongs_to :company

	def get_referrals
		company
		# company = self.company
		# offers = company.offers
		# offers.first.referrals
	end

	def close_referral!
		#send email
		self.status = "success"
		self.save!
	end
end
