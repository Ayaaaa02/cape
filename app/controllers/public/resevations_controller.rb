class Public::ResevationsController < ApplicationController
  def new
    @resevation = Resevation.new
    #@cafe.neme = Cafe.name
  end

  def confirm
    @resevation = Resevation.new
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
    params.require(:resevation).permit(:time, :people, :payment_method, :coming_date)
  end
  
  def cafe_params
    params.require(:cafe).permit(:name)
  end
end
