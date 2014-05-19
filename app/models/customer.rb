class Customer < ActiveRecord::Base
	has_many :products
	mount_uploader :customer_pic, CustomerPicUploader
	

	# def send_new_customer_to_all
	# 	Customer.new_photo_message_to_group(Photo.all, self)
	# end

	#  def mail
 #    UserMailer.new_customer_message_one(@customer, current_user).deliver
	# end

 #  def send_to_everyone
 #    user = User.all 
 #    user.each do |user|
 #      UserMailer.new_customer_message_all(@customer, user).deliver
 #    end
 #  end


end