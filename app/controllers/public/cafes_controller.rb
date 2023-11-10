class Public::CafesController < ApplicationController
  def index
    @cafes = Cafe.all.page(params[:page]).per(8)
  end

  def show
    @cafe = Cafe.find(params[:id])
  end
  
  def top
    @cafes = Cafe.all
  end
  
  def about
  end
  
  private 
  def cafes_params
    params.require(:cafe).perimit(:name, :image_id, :description, :status, :address)
  end
end
