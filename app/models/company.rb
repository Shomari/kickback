class Company < ActiveRecord::Base
	has_many :offers
	has_many :referrals, through: :offers
	has_many :admin_users
end
