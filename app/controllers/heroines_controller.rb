class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.all.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
