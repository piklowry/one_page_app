object @customer
attributes :id, :name, :email, :telephone


child :products do
  attributes :name, :customer_id
end


	