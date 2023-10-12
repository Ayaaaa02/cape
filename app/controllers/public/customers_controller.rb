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
     @customer.update(customer_params)
     redirect_to public_customers_mypage_path
    end
end
