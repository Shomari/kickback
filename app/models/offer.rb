class Offer < ActiveRecord::Base
	belongs_to :company 
	belongs_to :location
	has_many :referrals

	acts_as_taggable
	#this offer can have a series of checks for what it wants
	
	validates_presence_of :company
end

# tag_list is a method you can call on this
# o.tag_list.add("first_name")
# o.tag_list
# => ["first_name"]
