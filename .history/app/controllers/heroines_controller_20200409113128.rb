class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :update]

  def new
    @heroine = Heroine.new
  end
  def index
    @heroines = Heroine.all
  end

  def create
    @heroine = Heroine.new(params)

    if @heroine.valid?
      @heroine.save
    else
      render new
    end
  end

  private

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
