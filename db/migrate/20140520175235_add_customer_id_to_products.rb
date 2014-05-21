class AddCustomerIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :customer_id, :integer
  end
end
