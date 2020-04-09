class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :update, :edit]

  def new
    @heroine = Heroine.new
  end
  def index
    @heroines = Heroine.all
  end

  def create
    @heroine = Heroine.new
    @heroine.name = heroine_params(:name)
    @heroine.super_name = heroine_params(:super_name)
    @heroine.power_ids << heroine_params(:power)

    if @heroine.valid?
      @heroine.save
    else
      render new
    end
  end

  def show

  end

  private
  def heroine_params
    params.require(:heroine).permit(*args)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
