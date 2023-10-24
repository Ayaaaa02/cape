class Public::ResevationsController < ApplicationController
  before_action :move_to_signed_in, except: [:new]
  def new
    @resevation = Resevation.new
  end

  def confirm
    @resevation = Resevation.new(resevation_params)
  end

  def thanks
  end
  
  def create
    @resevation = Resevation.new(resevation_params)
  　if @resevation.save
    　redirect_to public_resevations_new_path(@resevation)
  　else 
    　render :new
  end
  
  
   private
  def resevation_params
    params.require(:resevation).permit(:start_time, :people, :payment_method, :coming_date, :cafe_id)
  end
  
  def cafe_params
    params.require(:cafe).permit(:name)
  end
  
  def move_to_signed_in
    unless customer_signed_in?
      redirect_to '/customers/sign_in'
  end
 end
end
