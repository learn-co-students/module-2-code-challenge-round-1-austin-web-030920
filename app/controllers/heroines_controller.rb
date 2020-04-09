class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    # @powers = @heroine.powers
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    @heroine.save!
    redirect_to heroine_path(@heroine)
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    # @heroine.powers << (params[:power_id])
    @heroine.update!(heroine_params)
    redirect_to heroine_path(@heroine)
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
