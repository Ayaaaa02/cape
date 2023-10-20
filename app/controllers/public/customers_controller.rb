class Public::CustomersController < ApplicationController
    
    def show
     @customer = current_customer
    end
    
    def edit
      @customer = current_customer
      @customers = Customer.all
    end
    
    def update
     @customer = current_customer
    if @customer.update(customer_params)
     redirect_to public_customers_mypage_path
     
    else
      render :edit
    end
    end
    
    private
    
    def customer_params
        params.require(:customer).permit(:last_name, :last_name_kana, :first_name_kana, :email, :phone_number)
    end
end
