class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :name
    	t.string :address
    	t.string :phone
    	t.string :contact

      t.timestamps null: false
    end
  end
end
