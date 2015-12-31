class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
    	t.integer :reward
    	t.string  :description

    	t.boolean :first_name
    	t.boolean :last_name
    	t.boolean :email
    	t.boolean :phone1
    	t.boolean :phone2
    	t.boolean :city
    	t.boolean :state
    	t.boolean :zipcode
    	t.boolean :address
    	t.boolean :gender
    	t.boolean :ethnicity
    	t.boolean :age
    	t.boolean :income
    	t.boolean :height
    	t.boolean :weight
    	t.boolean :company_name
    	t.boolean :company_phone
    	t.boolean :company_address
    	t.boolean :company_email
    	t.boolean :best_time_to_reach
    	t.boolean :perferred_contact_method
    	t.boolean :extra_field_1
    	t.boolean :extra_field_2
    	t.boolean :extra_field_3
    	t.boolean :extra_field_4
    	t.boolean :extra_field_5

    	t.belongs_to :company
    	t.belongs_to :location
      t.timestamps null: false
    end
  end
end
