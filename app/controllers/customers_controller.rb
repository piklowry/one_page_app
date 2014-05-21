class CustomersController < ApplicationController

  # before_filter :load

  # def load
  #   @customers = Customer.all
  #   @customer = Customer.new


  # end

  def index
   @customer = Customer.all
   render @customer
  end

  # def create
    
  #   @customer = Customer.new(customer_params)
  #   if @customer.save
  #     render @customer 
  #   else
  #     render nothing: true
  #   end
  # end
 

  def create
    
    @customer = Customer.new(customer_params)
    if @customer.save
    respond_to do |format|
      format.js  { render json: @customer }
      format.html { redirect_to customers_path }
    end
  else 
    respond_to do |format|
      format.js 
      format.html { redirect_to customers_path, notice: "update failed." }
    end
  end
end

  def edit
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.all
  end

  def show
    # @customer = Customer.all
    @customer = Customer.find(params[:id])
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
	      format.html { redirect_to customers_path }
	      format.js { render json: @customer }
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
