class Admin::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.page(params[:page]).per(10)
  end

  def update
     reservation = Reservation.find(params[:id])
    if reservation.update(reservation_params)
      redirect_to admin_reservations_path
    else
      @reservation = reservation
      render :show
    end
  end
  
   private
  def reservation_params
    params.require(:reservation).permit(:pople,:coming_date,:cafe_id)
  end
  
  def cafe_params 
    params.require(:cafe).permit(:name)
  end
end
