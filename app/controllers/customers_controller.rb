class CustomersController < ApplicationController
  # before_filter :authenticate_user!
  # before_action :mail, :send_to_everyone
  respond_to :js
  before_filter :load

  def load
    @customers = Customer.all
    @customer = Customer.new
  end

  def index 
  end


  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      success_note
      # flash.now[:notice] = "Successfully created post."
      @customers = Customer.all
    end
  end

  
  def edit
    @customer = Customer.find(params[:id])
    # render :action => "index"
  end


  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      @customers = Customer.all
    else
      render :json => @customer.errors
    end
  end

  def destroy
	    @customer = Customer.find(params[:id])
      
	    if @customer.destroy
	    respond_to do |format|
        flash.now[:notice] = "Successfully created post."
	      format.html { redirect_to customers_path }
	      format.js
	      @customers = Customer.all
	    end
	    else 
	    respond_to do |format|
        flash.now[:notice] = "Successfully created post."
	      format.html { redirect_to customers_path, notice: "update failed." }
	      format.js  
	    end
	  end
  end

  def search
    @search_results  = Customer.search(params[:search])
    render results_customers_path
  end


  def results
  end 

  def refresh_counter
    Customer.count
  respond_to do |format|
    format.js
  end
end



  def success_note
    flash[:notice] = 'Your message!'
  end

  def download_customer_pic
    @customer = Customer.find(params[:id])
    file = @customer.customer_pic
    send_file file.path
  end



  private

  def customer_params
    params.require(:customer).permit!
  end 

end
