class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
    	t.integer :reward
    	t.string  :description

    	t.belongs_to :company
    	t.belongs_to :location
      t.timestamps null: false
    end
  end
end
