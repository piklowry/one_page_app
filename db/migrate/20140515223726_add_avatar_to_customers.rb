class AddAvatarToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :customer_pic, :string
  end
end
