class Product < ActiveRecord::Base
	belongs_to :customer
	# mount_uploader :customer_pic, CustomerPicUploader
end
