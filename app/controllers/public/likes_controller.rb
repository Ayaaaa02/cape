class Public::LikesController < ApplicationController
  before_action :authenticate_customer!
  def create
    cafe = Cafe.find(params[:cafe_id])
    like = current_customer.likes.new(cafe_id: cafe.id)
    like.save
    redirect_to request.referer
  end
  
  def destroy
    cafe = Cafe.find(params[:cafe_id])
    like = current_customer.likes.find_by(cafe_id: cafe.id)
    like.destroy
    redirect_to request.referer
  end
end

