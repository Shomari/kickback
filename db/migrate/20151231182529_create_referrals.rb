class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
    	

    	t.belongs_to :user
    	t.belongs_to :offer


      t.timestamps null: false
    end
  end
end
