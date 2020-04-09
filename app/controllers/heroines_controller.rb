class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    set_heroine
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
       @heroine.save
       redirect_to @heroine
    else
      @errors = @heroine.errors
      render 'new'
    end
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:super_name, :name, :power)
  end
end
