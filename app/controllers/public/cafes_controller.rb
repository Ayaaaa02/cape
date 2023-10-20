class Public::CafesController < ApplicationController
  def index
    @cafes = Cafe.page(params[:page]).per(8)
  end

  def show
  end
end
