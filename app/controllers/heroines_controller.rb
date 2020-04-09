class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end
  
  def create
    
    #binding.pry
    @heroine = Herione.create(heroine_params)
    if @heroine.save
      flash[:success] = "Herione successfully created"
      redirect_to heroine_path(@heroine)
    else
      flash[:error] = "#{@heroine.error.messages}"
      render 'new'
    end
    
  def show
    @heroine = Heroine.find(params[:id])
  end


  
  end
  
  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
  
  
end
