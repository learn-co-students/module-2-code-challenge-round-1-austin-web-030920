class PowersController < ApplicationController
  before_action :find_power, only: [:show, :edit, :update]
  def index
    @powers = Power.all
  end

  def show
    
  end

  def edit

  end

  def update
    binding.pry
    @power.update(power_params)
    redirect_to power_path(@power)
  end

  private
  def power_params
    params.require(:power).permit(:name, :description, :heroine_id)
  end

  def find_power
    @power = Power.find(params[:id])
  end
end
