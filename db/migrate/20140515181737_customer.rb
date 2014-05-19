class Customer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :telephone
    	t.string :email
    end
  end
end

