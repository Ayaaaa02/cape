class Public::ReservationsController < ApplicationController
  before_action :move_to_signed_in, except: [:new]
  
  def new
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
  end

  def thanks
  end
  
  def create
    @reservation = Reservation.new(resevation_params)
  　if @reservation.save
    　redirect_to public_resevations_new_path(@reservation)
  　else 
    　render :new
  end
  
  
   private
  def reservation_params
    params.require(:reservation).permit(:start_time, :people, :payment_method, :coming_date, :cafe_id)
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
