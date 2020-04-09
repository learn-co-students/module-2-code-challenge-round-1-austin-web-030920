class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :update, :edit]

  def new
    @heroine = Heroine.new
  end
  def index
    @heroines = Heroine.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    # @heroine.name = heroine_params(:name)
    # @heroine.super_name = heroine_params(:super_name)
    @heroine.power_ids << heroine_params(:power_ids)

    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def show

  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_ids)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
