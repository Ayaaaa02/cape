class Public::ResevationsController < ApplicationController
  def new
    @resevation = Resevation.new
  end

  def confirm
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
    params.require(:resevation).permit(:time, :people, :payment_method, :date)
  end
end
