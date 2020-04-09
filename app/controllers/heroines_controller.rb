class HeroinesController < ApplicationController
  before_action :find_heroine, except: [:index, :new, :create]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def edit
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      flash[:success] = "Heroine successfully created"
      redirect_to @heroine
    else
      flash[:error] = "Something went wrong"
      
      binding.pry
      render 'new'
    end
  end

  def update
    if @heroine.update_attributes(heroine_params)
      flash[:success] = "Heroine was successfully updated"
      redirect_to @heroine
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @heroine.destroy
      flash[:success] = "Heroine was successfully deleted"
      redirect_to @heroines_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @heroines_path
    end
  end

  private

    def find_heroine
      @heroine = Heroine.find(params[:id])
    end

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_ids)
    end

end
