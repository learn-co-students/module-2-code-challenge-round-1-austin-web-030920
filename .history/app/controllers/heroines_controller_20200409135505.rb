class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :update]

  def new
    @heroine = Heroine.new
  end
  def index
    @heroines = Heroine.all
  end

  # def edit

  # end

  # def update
  #   @heroine.update(heroine_params)
  #   redirect_to heroine_path(@heroine)
  # end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def show

  end

  def delete
    Heroine.destroy(params[:id])
    redirect_to heroines_path
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_ids)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
