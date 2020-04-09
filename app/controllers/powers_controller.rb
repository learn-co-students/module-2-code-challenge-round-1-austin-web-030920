class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new
    @power.name = params[:power][:name]
    @power.description = params[:power][:description]
    @power.save

    redirect_to power_path(@power)
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])

    changes = params.require(:power).permit(:name, :description, :heroines => [])
    changes[:heroines].shift
    heros = changes[:heroines].map do |heroine| heroine = Heroine.find(heroine.to_i) end
    @power.heroines << heros
    
    @power.update(params.require(:power).permit(:name, :description))
    redirect_to power_path(@power)
  end
end
