class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new
    @heroine.name = params[:heroine][:name]
    @heroine.super_name = params[:heroine][:super_name]
    @heroine.powers << Power.find_by(name: params[:heroine][:powers])

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end

  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    @heroine.update(params.require(:heroine).permit(:name, :super_name))

    redirect_to heroine_path(@heroine)
  end
end
