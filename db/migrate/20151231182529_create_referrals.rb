class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
        t.string :first_name
        t.string :last_name
        t.string :email
        t.string :phone1
        t.string :phone2
        t.string :city
        t.string :state
        t.string :zipcode
        t.string :address
        t.string :gender
        t.string :ethnicity
        t.string :age
        t.string :income
        t.string :height
        t.string :weight
        t.string :company_name
        t.string :company_phone
        t.string :company_address
        t.string :company_email
        t.string :best_time_to_reach
        t.string :perferred_contact_method
        t.string :extra_field_1
        t.string :extra_field_2
        t.string :extra_field_3
        t.string :extra_field_4
        t.string :extra_field_5

        t.string :status
        t.integer :revenue
        t.date   :closed_at

        t.belongs_to :user
    	t.belongs_to :offer
        ###
        # move all the stuff from offers to here
        # use the tags to know what should show up
        # keep the associations
        t.timestamps null: false
    end
  end
end


