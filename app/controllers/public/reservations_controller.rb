class Public::ReservationsController < ApplicationController
  before_action :authenticate_customer!
  before_action :move_to_signed_in, except: [:new]
  
  def new
    if params[:id].present?
      @reservation = Reservation.find(params[:id])
    else
      @reservation = Reservation.new
    end
  end

  def confirm
    if params[:id].present?
      @reservation = Reservation.find(params[:id])
      @reservation.update(reservation_params)
    else
      @reservation = Reservation.new(reservation_params)
      @reservation.save
    end
  end

  def thanks
    @reservation = Reservation.find(params[:id])
    @reservation.update(status: true)
  end
  
  private
  def reservation_params
    params.require(:reservation).permit(:start_time, :people, :payment_method, :coming_date, :cafe_id)
  end
  
  def move_to_signed_in
    unless customer_signed_in?
      redirect_to '/customers/sign_in'
    end
  end
end
