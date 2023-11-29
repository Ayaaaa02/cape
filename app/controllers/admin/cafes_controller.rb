class Admin::CafesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @cafes = Cafe.all.page(params[:page]).per(10)
  end

  def new
    @cafe = Cafe.new
  end

  def show
     @cafe = Cafe.find(params[:id])
     gon.cafe =@cafe
  end

  def edit
    @cafe = Cafe.find(params[:id])
  end
  
  def update
    @cafe = Cafe.find(params[:id])
    if @cafe.update(cafe_params)
      redirect_to admin_cafe_path(@cafe)
    else
      render :edit
    end
  end
  
  def create
    @cafe = Cafe.new(cafe_params)
    if @cafe.save
      redirect_to admin_cafes_path(@cafe)
    else
      render :new
    end
  end
  
  private
  def cafe_params
    params.require(:cafe).permit(:image, :name, :description, :status, :address)
    
  end
end
