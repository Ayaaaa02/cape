class Public::CafesController < ApplicationController
  before_action :authenticate_customer!, except: [:top, :about]
  def index
     @cafes = Cafe.all.page(params[:page]).per(8)
  end

  def show
    @cafe = Cafe.find(params[:id])
    gon.cafe =@cafe
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
