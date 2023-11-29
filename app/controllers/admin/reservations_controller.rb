class Admin::ReservationsController < ApplicationController
  def index
      @reservations = Reservation.where(status: true).page(params[:page]).per(5)
  end
end