class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    set_power
  end

  def edit
    set_power
    @heroines = Heroine.all
  end

  def update
    set_power
    @power.update(power_params)
    redirect_to @power
  end

  private

  def set_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description, heroines: [])
  end
end
