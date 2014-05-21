object @customer

attributes :name, :email, :telephone

child :product do 
	node(:url) { |customer| product_url(customer)
end


