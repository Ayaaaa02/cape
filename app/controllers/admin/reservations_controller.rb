class Admin::ReservationsController < ApplicationController
  before_action :authenticate_admin!
  def index
      @reservations = Reservation.where(status: true).page(params[:page]).per(5)
  end
end